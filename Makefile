.PHONY: test
MVN_IMAGE = maven:3.2.3-jdk-7
test:
	docker run -it --rm -v "$$PWD":/work \
	 -v /var/run/docker.sock:/var/run/docker.sock \
	 -v /Users/mgu/.m2/repository/:/root/.m2/repository/ \
	 -w /work $(MVN_IMAGE) \
	 mvn verify -Ddocker.maven.image=$(MVN_IMAGE) $(o)
