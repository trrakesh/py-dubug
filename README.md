# Create Build

```sh
 sudo docker build -t my-python-app .
```

# Run build with debug

```sh
sudo docker run -it --rm -p 5678:5678 -v $(pwd):/app my-python-app
```
