require 'rack/utils'

module Ckeditor
  class Middleware
    def initialize(app, session_key = '_session_id')
      @app = app
      @session_key = session_key
    end
   
    def call(env)
      if env['HTTP_USER_AGENT'] =~ /^(Adobe|Shockwave)\s+Flash/
        params = ::Rack::Utils.parse_query(env['QUERY_STRING'])
        env['HTTP_COOKIE'] = [ @session_key, ::Rack::Utils.unescape(params[@session_key]) ].join('=').freeze unless params[@session_key].nil?
      end
      @app.call(env)
    end
  end
end
