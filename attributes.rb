# Instead of
default['java']['install_flavor'] = 'oracle'
default['java']['jdk_version'] = '8'
default['java']['oracle']['accept_oracle_download_terms'] = true

# do this
# http://ruby-doc.org/core-2.3.1/Object.html#method-i-tap
default['java'].tap do |java|
  java['install_flavor'] = 'oracle'
  java['jdk_version'] = '8'
  java['oracle']['accept_oracle_download_terms'] = true
end

default['an_application']['settings']['very_long_set'].tap do |very_long_set|
  very_long_set['more_longer_attributes']['omg'].tap do |omg|
    do_something_with omg['even_more_configuration']
  end
end
