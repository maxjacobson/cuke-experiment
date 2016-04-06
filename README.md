# reproducing a cucumber rerunning bug

try running:

```bash
CIRCLE_NODE_TOTAL=1 CIRCLE_NODE_INDEX=0 exe/chunk_of_cukes
echo $?
```

The exit status should be 2 (not 0) with these fixes

Then uncomment the commented cuke and run.

The exit status should be 1 now, because there's a real failure.

Then fix the failing test and run it again.

The exit stauts should be 0 now.
