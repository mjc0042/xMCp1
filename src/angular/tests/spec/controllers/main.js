describe('Testing Main Controller.', function() {
  beforeEach(module('xMCp1App'));

  var ctrl, scope;
  // Inject main controller and its scope
  beforeEach(inject(function($controller, $rootScope) {
    scope = $rootScope.$new;
    ctrl = $controller('MainCtrl', {
      $scope: scope
    });
  }));

  it('Should create greeting when calling test function', function() {
    expect(scope.greeting).toBeUndefined();
    scope.mainCtrlTestFunc();
    expect(scope.greeting).toEqual("Hello Mike");
  });
});
