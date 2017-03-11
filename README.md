# Gradle Spring Securty example 

Basic Spring Security with custom authentication provider.

# Requirements

* Java Platform (JDK) 8
* Gradle 3.x

# API Versions

```groovy
ext {
    springVersion         = '4.2.9.RELEASE'
    slf4jVersion          = '1.7.2'
    logbackVersion        = '1.0.9'
    springVersion         = '4.3.7.RELEASE'
    springSecurityVersion = '4.2.2.RELEASE'
    tomcatVersion         = '7.0.75'
    jstlVersion           = '1.2'
    servletApiVersion     = '3.0.1'
}
```


# Run application


```sh
 gradle build tomcatRunWar
 
```

Point your browser to [http://localhost:8080/webmvc](http://localhost:8080/webmvc)

# Authentication


username and password ​​must be the same string

```java

@Service
public class LoginService {
	public boolean authenticate(String username, String password){
		return Objects.nonNull(username) && username.equals(password);
	}
}


```

