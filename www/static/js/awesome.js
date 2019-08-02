// awesome.js

// patch for lower-version IE:

if (! window.console) {
    window.console = {
        log: function() {},
        info: function() {},
        error: function() {},
        warn: function() {},
        debug: function() {}
    };
}

//patch for string.trim():

if (! String.prototype.trim) {
    String.prototype.trim = function() {
        return this.replace(/^\s+|\s+$/g, '');
    };
}

if(! Number.prototype.toDateTime) {
    var replace = {
        'yyyy': function(dt) {
            return dt.getFullYear().toString();
        },
        
    }
}
