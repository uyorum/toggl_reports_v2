require_relative 'TogglReportsV2'
require 'pp'

api_key = 'XXXXXXXXXXXXXXXXXXX'
workspace_id = YYYYYY
user_agent = 'ZZZZZZZZZ'

tog = TogglReports.new(api_key)

path = 'details'
params = {
  :workspace_id => workspace_id,
  :since => "YYYY-MM-DD",
  :until => "YYYY-MM-DD",
  :user_agent => user_agent
  }

res = tog.get(path, params)
pp res
