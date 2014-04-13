#!/bin/sh

# Start the base container with a shell direct to explore, troubleshoot, etc.  Useful if supervisord for starting ssh isn't working.
docker run -t -i -P alecl/perm-limited /bin/bash
