nx
==

.. post:: Jan 29, 2023
   :tags: typescript,nx


Create a new project:

```
npx create-nx-workspace --preset=ts
```

Create a cli app:

```
npm install --save-dev @nrwl/node
nx generate @nrwl/node:app cli
nx serve cli
```
