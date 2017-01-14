# Apigee Edge API Proxy + Azure Active Directory Integration Example
This is the source code and configuration used in a blog post describing how to protect APIs proxied by [Apigee Edge](https://www.apigee.com) using OAuth2 and JWT.  Azure Active Directory is used as the Identity Provider.

The theory and end result is described in detail in this [blog post](https://www.medium.com).

The configuration of the Azure Active Directory tenant needed to make this work is described in this [blog post](https://www.medium.com).

## Getting Started
These instructions assume a working knowledge of Apigee Edge Public Cloud.

You can setup a free Apigee Edge Public Cloud account [here](https://enterprise.apigee.com).  There are various restrictions put in place on these types of accounts.  But, this API Proxy should be capable of working with those restrictions.

The quickest way to try out this project is to grab the API Proxy in [zip form](https://github.com/rcbj/apigee-jwt-aad-timeapi-proxy/proxy/AD-JWT-Protected-API-Proxy.zip) and deploy it to your own Apigee Edge Public Cloud community edition organization.

An Apigee Cache called signer-cert must be created in the environment before the API Proxy can be deployed.

Unfortunately, it costs me money to keep an AAD tenant running that will always work with this example out of the box.  Plus, open up some potentially undesirable security issues.  So, it will be necessary to setup your own AAD tenant with a test user account, global administrator account, API Consumer application definition, and API Provider application definition.  Once these are created, take note of the client_id for the API Consumer, the audience information for the API Provider, and test account username and password.

To that end, you must update the Federation Metadata URL that is referenced in the Service Callout policy in the conditional rule called "parse + validate alg=RS256-ms".  In the Java Callout Policy, the claim_iss and claim_aud properties must be updated to reflect your configuration.  Save and deploy these updates.

In the test-client directory, there is a bash shell script called test-client.sh, that simulates obtaining a JWT token from AAD and making an API call.  Make the following updates.
* *Update CLIENT_ID variable to a valid value for your AAD tenant.*
* *Update USERNAME_ variable to a valid value for your AAD tenant.*
* *Update PASSWORD_ variable to a valid value for your AAD tenant.*
* *Update the RESOURCE_URL variable to a valid value for your AAD tenant.*
This script doesn't require any parameters.  To execute it, run
```
./test-client.sh
```
### Prerequisites

### Installing

A step by step series of examples that tell you have to get a development env running

Say what the step will be

### And coding style tests

Explain what these tests test and why

```
Give an example
```

## Deployment

Add additional notes about how to deploy this on a live system

## Built With

* [Dropwizard](http://www.dropwizard.io/1.0.2/docs/) - The web framework used

## Authors

* **Robert C. Broeckelmann Jr.** - *Initial work*

See also the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE.md](LICENSE.md) file for details

## Acknowledgments

Thanks to Dino Chiesa and [this](https://github.com/apigee/iloveapis2015-jwt-jwe-jws) project for the base code.

The [JSON Smart library](http://netplex.github.io/json-smart/) was modified slightly to work in Apigee Edge Public Cloud community edition.

The  [Not Yet Commons SSL library](http://juliusdavies.ca/not-yet-commons-ssl-0.3.9/) was also modified slightly to work with Apigee Edge Public Cloud community edition.
