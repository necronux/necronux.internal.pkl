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

# Following subcommands are used in ci

resolve:
    ./gradlew resolveInternal

eval:
    ./gradlew evalGhaModules
