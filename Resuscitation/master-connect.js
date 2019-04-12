// Eric Sheffield 2019
// CC-BY-4.0

const maxApi = require('max-api');
const exec = require('child_process').exec;

maxApi.addHandler('connect', function() {
    exec('sh master-connect-script.sh');   
});