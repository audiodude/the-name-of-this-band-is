class IndexCtrl {

  constructor(private $location: ng.ILocationService) {}

  onSignIn(googleUser: any) {
    var profile = googleUser.getBasicProfile();
    this.$location.url('/newpath');
      
    // console.log('ID: ' + profile.getId()); // Do not send to your backend! Use an ID token instead.
    // console.log('Name: ' + profile.getName());
    // console.log('Image URL: ' + profile.getImageUrl());
    // console.log('Email: ' + profile.getEmail());
  }


}
