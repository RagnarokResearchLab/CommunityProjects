# Community Projects Mirror

This repository tracks various projects created and published by the RO community.

## Goals

Many old projects have become difficult to find due to the passage of time (dead links, obscure forum posts, buried in spam, ...). Since they may still be of interest to researchers, this repository attempts to aggregate them.

## Checkout Notice

Make sure to check out the repository *recursively* since it uses [Git submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules):

```bash
git clone https://github.com/RagnarokResearchLab/CommunityProjects.git --recursive
```

Be aware that *all* dependencies will be fetched, some of which are quite large (several gigabytes).

If you aren't interested in getting the complete commit history, you can speed up this process:

```bash
git clone https://github.com/RagnarokResearchLab/CommunityProjects.git --recursive --shallow-submodules
```

To further reduce the time needed to clone, you may want to skip nested dependencies as well:

```bash
git clone https://github.com/RagnarokResearchLab/CommunityProjects.git --shallow-submodules
```

Finally, you could override the parallelism factor, which defaults to an overly conservative value:

```bash
git clone https://github.com/RagnarokResearchLab/CommunityProjects.git --shallow-submodules --jobs=8
```

The difference will be quite signitifcant, as shown by the following comparison table:

| Recursive | Shallow | Jobs | Time | Disk Usage |
| :---: | :---: | :---: | :---: | :---: |
| NO | NO |  0 (auto) | 0.929 sec | 246 KB |
| YES | NO | 0 (auto) | 8 min 4 sec | 4.8 GB |
| YES | YES | 8 | 3 min 58 sec | 3.1 GB |
| YES | YES |  0 (auto) | 5 min 56 sec | 3.1 GB |

## Licensing Information

This repository contains no actual code. All community projects have first been published by their respective authors.

The original license terms still apply. For details, please consult the individual projects' README or LICENSE file (etc).

## Contributing

If you know of (or have created) a project that isn't listed here, please add it! :)
