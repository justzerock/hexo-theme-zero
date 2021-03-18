/* global hexo */

'use strict';

const crypto = require('crypto');

hexo.extend.helper.register('zexo_inject', function(point) {
  return hexo.theme.config.injects[point]
    .map(item => this.partial(item.layout, item.locals, item.options))
    .join('');
});