Single Sign On Solution
-
    Protect static and dynamic content with Keycloak and mod_openid_auth is the easer way to keep the authentication centralized and authorization offline on the servers without any code customization or usage of libraries.

    Keycloak will authenticate the user when they try to access any content at the first time, that usually will be a frontend resource. This authentication is made by the HTML Login Form and afterwards all the requests will have the access token on the request headers added automatically by the reverse proxy. The access token will never be accessible by the client, an mod_auth_openid cookie is the only piece on client.

Running the project
-
    This solution is implemented on Docker, ready to go

    git clone https://github.com/btafarelo/sso.git
    
    cd sso

    docker-compose up

    wait

    Once the build has finished open this url in a incognito broswer window to make the test easy.
    
    http://localhost

    When prompt for a user you can provide any of these credntials:

    user=admin      password=admin
    user=btafarelo  password=btafarelo

    Use the admin credentials to access the admin console and check that all the other resources will be denied.

    Use the btafarelo credentials to access everything else.
