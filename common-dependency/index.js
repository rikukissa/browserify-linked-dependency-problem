'use strict';

(function(exports) {
  if(exports.ohNo) {
    throw new Error('Module already initialized');
  }

  exports.ohNo = true;
})(this);
