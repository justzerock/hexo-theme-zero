hexo.on('generateBefore', function () {
  var rootConfig = hexo.config;

  if (hexo.locals.get) {
    // 获取 source/_data 目录下的文件
    var data = hexo.locals.get('data');

    // 如果存在 zexo.yml 文件，就用它覆盖原来的配置文件
    if (data && data.zexo) {
      hexo.theme.config = data.zexo;
    }
  }

  hexo.theme.config.rootConfig = rootConfig;
});