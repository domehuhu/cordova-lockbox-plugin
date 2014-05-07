var Lockbox = function() {
    
}

Lockbox = function() {
    Lockbox.serviceName = "LockBoxPlugin";
    Lockbox.eventDict = {};
};

Lockbox.prototype.setString = function(key, value, successCallback, failureCallback) {
    return cordova.exec(
                        successCallback,
                        failureCallback,
                        Lockbox.serviceName,
                        "setString",
                        [key, value]
    );
}

Lockbox.prototype.stringForKey = function(key, successCallback, failureCallback) {
    return cordova.exec(
                        successCallback,
                        failureCallback,
                        Lockbox.serviceName,
                        "stringForKey",
                        [key]
                        );
}

if (!window.plugins) {
    window.plugins = {};
}
if (!window.plugins.Lockbox) {
    window.plugins.Lockbox = new Lockbox();
}

if (module.exports) {
    module.exports = new Lockbox();
}

