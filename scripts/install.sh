#!/bin/bash

echo "Adding analytics..."

ga="    <script>\n\
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){\n\
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\n\
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\n\
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');\n\
        ga('create', 'UA-44629676-1', 'got-cms.com');\n\
        ga('send', 'pageview');\n\
    </script>"

find /var/www/gotcms/module/GcBackend/views/layouts/ -name "*.phtml" -exec sed -i "s#</body>#$ga\n</body>#" '{}' \;
find /var/www/gotcms/templates/layout/ -name "*.phtml" -exec sed -i "s#</body>#$ga\n</body>#" '{}' \;

echo "Done"
