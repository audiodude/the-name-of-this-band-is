/// <reference path="../typings/angularjs/angular.d.ts" />

class VoteCtrl {

}

class VoteService {

}

angular.module('notb.vote', [])
  .service('VoteService', VoteService)
  .controller('VoteCtrl', VoteCtrl);
