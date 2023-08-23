# frozen_string_literal: true

exit 1 if File.read(File.join(File.dirname(__FILE__), 'resource.txt')) != "someresource\n"
exit 2 if File.read(File.join(File.dirname(__FILE__), 'res', 'resource.txt')) != "anotherresource\n"
Dir.chdir(File.dirname(__FILE__))
exit 1 if File.read('resource.txt') != "someresource\n"
exit 2 if File.read('res/resource.txt') != "anotherresource\n"
