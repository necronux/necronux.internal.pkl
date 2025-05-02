# ==-----------------------------------------------------------== #
# SPDX-FileCopyrightText: © 2025 Nayan Patil <nayantsg@proton.me>
#
# SPDX-License-Identifier: Apache-2.0
# ==-----------------------------------------------------------== #

sbom:
    reuse lint
    reuse spdx -o reuse.spdx

runpkl:
    just resolve
    just eval

resolve:
    just resolve-internal
    just resolve-internalpklci

eval:
    just eval-internal
    just eval-internalpklci

# Following subcommands are used in ci

resolve-internal:
    ./gradlew resolveInternal

resolve-internalpklci:
    ./gradlew resolveInternalPklCi

eval-internal:
    ./gradlew evalGhaModules

eval-internalpklci:
    ./gradlew evalInternalPklCiModules
    ./gradlew evalInternalPklCiWorkflows

make-internalpkg:
    ./gradlew makeInternalPkg
