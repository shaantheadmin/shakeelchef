maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures shakeelcookbook"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"
recipe "shakeelchef::default", "Prints a message to the output"
depends "rs_utils"
attribute "shakeelcookbook/custom_input",
:display_name => "A Custom Chef Input",
:choice => ["A", "B", "C"],
:recipes => ["shakeelcookbook::default"]
:required => "required"
