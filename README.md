# Apigee API Proxy + Azure Active Directory Integration Example
This is the source code and configuration used in a blog post describing how to protect APIs proxied by [Apigee Edge](https://www.apigee.com) using OAuth2 and JWT.  Azure Active Directory is used as the Identity Provider.

The theory and end result is described in detail in this [blog post](https://www.medium.com).

The configuration of the Azure Active Directory tenant needed to make this work is described in this [blog post](https://www.medium.com).

## Getting Started
The quickest way to try out this project is to grab the API Proxy in zip form and deploy it to your own Apigee Edge Public Cloud community edition organization.

You can setup a free Apigee Edge Public Cloud account [here](https://enterprise.apigee.com).

There are various restrictions put in place on this 

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
