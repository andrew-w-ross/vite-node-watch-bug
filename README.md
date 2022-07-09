# Vite-Node Stale Update Issue

In watch mode vite-node will pickup the first change but then reuse the intial change on subsequent edits.

## Steps to reproduce 

- run `npm start` : resets the index.ts file contents and then starts vite-node in watch mode
- in another terminal run `npm test` : this script changes the content of the file 3 times

## Expected output

It's expected that the vite-node will emit the changes when they happen. The console should look like this:

```
Initial log command
From index.ts First Change
From index.ts Second Change
From index.ts Third Change
```
## Actual output

The actual output is:

```
Initial log command
From index.ts First Change
From index.ts First Change
From index.ts First Change
```

It `vite-node` does seem to correctly pick up the file change as evident from the additional console logs. 
But it seems to only use the first update hence why I'm calling it the stale update issue.