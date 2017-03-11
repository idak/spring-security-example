# Gradle Spring Securty example 

Basic Spring Security with custom authentication provider.

# Requirements

Java Platform (JDK) 8
Gradle 3.x


# Run application


```sh
 gradle build tomcatRunWar
 
```

Point your browser to http://localhost:8080/webmvc

# Authentication


The values ​​must be the same
```java

@Service
public class LoginService {
	public boolean autenticate(String username, String password){
		return Objects.nonNull(username) && username.equals(password);
	}
}


```

