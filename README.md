# Ray Surveyor Test Suite


Ray and RayPlatform src (**./ray-build/**) are linked with :
* https://github.com/zorino/RayPlatform
* https://github.com/zorino/ray

**./data/** : assembly and graph data for the test

**./surveys-configs/** : config files for the test

**./surveys-results/** : the output results of the test

**./surveys-fix/** : fix results to compare with


** Clone the repo with submodules**
```sh
	$ git clone --recursive https://github.com/zorino/RaySurveyor-TestSuite.git
```


**To Rebuild Ray**
```sh
	$ ./ray-build.sh
```


**To Run a Test**
```sh
	$ ./ray-surveyor-launcher.sh ./surveys-configs/launch-surveyor_1in-1out-filter.conf
```

