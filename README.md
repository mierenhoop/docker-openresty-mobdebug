## Example

1. Open [ZeroBrane Studio](https://studio.zerobrane.com/) and choose `example-plain` as the project directory.
2. Click Project -> Start Debugger Server.
3. Run `docker-compose up` from inside `example-plain`.
4. Set a breakpoint or do whatever to test the debugger.
5. Navigate to [localhost:8080](http://localhost:8080/).

It should work as expected.

Tested with Debian Bookworm as the host running [Podman](https://podman.io/) instead of Docker.

