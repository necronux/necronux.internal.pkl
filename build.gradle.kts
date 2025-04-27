// ==-----------------------------------------------------------== //
// SPDX-FileCopyrightText: © 2025 Nayan Patil <nayantsg@proton.me>
//
// SPDX-License-Identifier: Apache-2.0
// ==-----------------------------------------------------------== //

plugins {
  id("org.pkl-lang") version "0.27.2"
}

pkl {
  evaluators {
    register("evalGhaModules") {
      projectDir.set(file("."))
      sourceModules.set(fileTree(projectDir) { include("gha/*.pkl") })
      outputFile.set(file("${layout.buildDirectory.get()}/%{moduleName}.%{outputFormat}"))
      outputFormat.set("pcf")
    }
  }

  project {
    resolvers {
      register("resolveInternal") {
        projectDirectories.from(file("."))
      }
    }
  }
}
