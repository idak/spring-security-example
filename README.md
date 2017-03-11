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


username and password ​​must be the same string

```java

@Service
public class LoginService {
	public boolean authenticate(String username, String password){
		return Objects.nonNull(username) && username.equals(password);
	}
}


```

