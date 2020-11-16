# Dropbox sometimes likes to fail then it wants to be restarted.  This little program should resolve this issue.

This requirement was resolved using AutoHotKey because it can produce Windows Native Executables and it was easy enough
to resolve it that way.

GO is a very low-level programming language that does not have good integration with Win32, at this time. (11-16-2020).
## Table of Contents

- [About](#about)
- [Getting Started](#getting_started)
- [Usage](#usage)
- [Contributing](../CONTRIBUTING.md)

## About <a name = "about"></a>

Write about 1-2 paragraphs describing the purpose of your project.

## Getting Started <a name = "getting_started"></a>

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See [deployment](#deployment) for notes on how to deploy the project on a live system.

### Prerequisites

[Win32 for GO](https://github.com/AllenDang/w32)

```
go get github.com/AllenDang/w32

go install github.com/AllenDang/w32
```

### Installing

A step by step series of examples that tell you how to get a development env running.

Say what the step will be

```
Give the example
```

And repeat

```
until finished
```

End with an example of getting some data out of the system or using it for a little demo.

## Usage <a name = "usage"></a>

Add notes about how to use the system.
