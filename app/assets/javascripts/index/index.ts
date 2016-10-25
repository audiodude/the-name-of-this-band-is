/// <reference path="../typings/angularjs/angular.d.ts" />

var gapi: any;

class IndexCtrl {
  constructor(private $location: ng.ILocationService,
              private IndexService: IndexService) {
    gapi.signin2.render('g-signin', {
      'scope': 'profile email',
      'width': 240,
      'height': 50,
      'onsuccess': (googleUser: any) => this.onSignIn(googleUser),
    });
  }

  onSignIn(googleUser: any) {
    var idToken = googleUser.getAuthResponse().id_token
    this.IndexService.checkForAdmin(idToken).then((isAdmin: boolean) => {
      if (isAdmin) {
        this.$location.url('/admin');
      } else {
        this.$location.url('/vote');
      }
    });
  }
}

class IndexService {

  constructor(private $http: ng.IHttpService) { }

  checkForAdmin(idToken: string) {
    return this.$http.post('/users/is_admin', {
      'idToken': idToken
    }).then((httpResp: any) => {
      return <boolean>httpResp.data.isAdmin;
    });
  }

}

angular.module('notb.index', [])
  .service('IndexService', IndexService)
  .controller('IndexCtrl', IndexCtrl);
