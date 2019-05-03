/* eslint new-cap: "off", no-invalid-this: "off" */

'use strict';

const {Given} = require('cucumber');

Given(/^I use the mock target$/, function(callback) {
  this.apickli.domain = 'https://uat-api.aat.org.uk';
  callback();
});

Given('I use UAT api host as target', function () {
  this.apickli.domain = 'https://uat-api.aat.org.uk';
});

// Then('I store the value of body path {string} as {string}', function (string, string2) {
  
//   string2 = this.apickli.setAccessTokenFromResponseBodyPath(string); 
// });




