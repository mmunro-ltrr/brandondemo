# Brandon Demo

Demonstrates how a Docker image can preserve a fixed Python environment
to guarantee reproducible runs.

## Usage

Assuming a working Docker installation is available from the commend line,
changing to a directory containing a clone of this repository and using the
```
docker build -t localdemo:1.0.0 .
```
command will build the image (and tag it with the arbitrary name
`localdemo:1.0.0`). Thereafter, the command
```
docker run -t -i --rm -v "$(pwd)":/app localdemo:1.0.0
```
will run a container using the locally built image, taking input from a
file with the hard-coded name `Data.xlsx` in the current directory; this
should be in Excel format, containing two columns of numbers, the _x_ and _y_ coordinates of points to be plotted. An image file with the hard-coded name `plotted_data.png` should then appear in the current directory.

## Files

* `All_together.py` the Python script run within the container.
* `Data.xlsx` an example data file (Execel format).
* `Dockerfile` customizes the official Python Docker image for this demo.
* `requirements.txt` the dependencies (for pip to install), frozen at specific versions.
