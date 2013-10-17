This is a sample project for reproducing issue162 in formotion. 

Below are the environment details:

```bash
$ bundle
Using rake (10.1.0) 
Using bubble-wrap (1.4.0) 
Using motion-require (0.0.7) 
Using formotion (1.6) 
Using motion-layout (0.0.1) 
Using thor (0.18.1) 
Using rubymotion_generators (0.1.0) 
Using bundler (1.3.5) 
Your bundle is complete!
Use `bundle show [gemname]` to see where a bundled gem is installed.

$ motion --version
2.9
```

Steps to reproduce:

1. Clone the app locally
2. Run bundle
3. run rake
4. click the button in simulator
5. Notice the app crashes

Steps to pinpoint the issue:

1. Comment out the second section in `form_controller.rb`
2. run rake
3. click the button in simulator
4. Notice the app DOES NOT crash

