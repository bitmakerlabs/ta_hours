Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '9d1fd589f198776d5668', '949806802d44434ea8ac980bb611fbaa244aeccf'
end