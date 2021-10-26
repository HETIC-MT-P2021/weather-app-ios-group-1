# 🌦 Weathapp

This weather app is one of best free weather apps. Its so easy to receive the weather conditions in your current location. Realtime temperature, humidity, pressure and wind direction are all in the weather app based.

## 🔗 Requirements
 - Swift:  v5.5
 - Swiftlint: 0.43.1
 - Swiftformat: 0.48.1

## 🔥 Setup

The following make commands are available : 

|command|description|
|-|-|
| **make setup**| Setup the whole project by adding `githooks` and installing `pod` dependencies. (Notice: This won't install the requirements specified above)|
| **make lint**| Perform a lint stage using `swiftlint.yml`. |
| **make lint-fix**| Automatically fix linting issues. |
| **make swiftformat**| Automatically format files. |

## 👥 Contributing

We follow a [code of conduct](CODE_OF_CONDUCT.md), if you wish to contribute on this project, we strongly advise you to read it.

<details>	
  <summary><b>Branch naming convention</b></summary>

- You branch should have a name that reflects it's purpose.

- It should use the same guidelines as [COMMIT_CONVENTIONS](COMMIT_CONVENTIONS.md) (`feat`, `fix`, `build`, `perf`, `docs`), followed by an underscore (`_`) and a very quick summary of the subject in [kebab case][1].

    Example: `feat_add-image-tag-database-relation`.
</details>
<details>
  <summary><b>Pull requests and commits</b></summary>

Pull requests in this project follow two conventions, you will need to use the templates available in the [ISSUE_TEMPLATE](.github/ISSUE_TEMPLATE) folder

If your pull request is still work in progress, please add "WIP: " (Work In Progress) in front of the title, therefor you inform the maintainers that your work is not done, and we can't merge it.

The naming of the PR should follow the same rules as the [COMMIT_CONVENTIONS](COMMIT_CONVENTIONS.md)
</details>

## 🌈 Features

- Fetch Weather depending on your current location
- Search Cities with autocompletion
- Fetch Weather depending on the selected city.

## 👨‍💻 Development mode

1. Most of the time a ticket is assigned ,on the project board, to a team member. If it is not the case and you are told to do it yourself, assign the github ticket to you. 
2. When you start working on the ticket, move the concerned ticket to `In Progress`.
3. Create a branch specifically for this ticket with a name that follows the [conventions specified below](#branch-naming-convention).
4. Commit regularly at each significant step with unambiguous commit messages (see [COMMIT_CONVENTIONS](COMMIT_CONVENTIONS.md) file).
5. Create a merge request that follows the [conventions specified below](#pull-requests-pr) to the develop branch.
6. On the project board, move the ticket to the status `In Review`
7. Request a review from another team member.
8. It may take some back and forth before your pull request is validated
9. Your pull request will then be merged into the develop branch and the concerned ticket will be moved to `Done`


## 🎮 Technical Choices

### 🪝 Git Hooks

Git hooks are placed in `.git/hooks`. The only existing hook for now is a pre-commit hook that will run `swiftLint & swiftformat` command.

### 🛠 Continuous Integration (CI)

A CI pipeline is configured for this project.

The pipeline will run 4 different jobs:

- Dependencies check
- Linter
- Build
- Tests

### 🔬 Linter
- [swiftLint](https://github.com/realm/SwiftLint)
- [swiftformat](https://github.com/nicklockwood/SwiftFormat)

## 🏄‍♂️ Authors

<table align="center">
  <tr>
    <td align="center">
    <a href="https://github.com/myouuu">
      <img src="https://avatars.githubusercontent.com/u/60980138?v=4" width="100px;" alt=""/>
      <br />
      <sub><b>Meriem MRABENT</b></sub>
    </a>
    </td>
    <td align="center">
    <a href="https://github.com/gensjaak">
      <img src="https://avatars.githubusercontent.com/u/17094432?v=4" width="100px;" alt=""/>
      <br />
      <sub><b>Jean-Jacques AKAKPO</b></sub>
    </a>
    </td>
    <td align="center">
    <a href="https://github.com/FaycalTOURE">
      <img src="https://avatars.githubusercontent.com/u/19931625?v=4" width="100px;" alt=""/>
      <br />
      <sub><b>Fayçal TOURÉ</b></sub>
    </a>
    </td>
    </td>
        <td align="center">
        <a href="https://github.com/JackMaarek">
          <img src="https://avatars3.githubusercontent.com/u/28316928?s=400&u=3cdfb5b0683245ad333a39cfca3a5251f3829824&v=4" width="100px;" alt=""/>
          <br />
          <sub><b>Jacques MAAREK</b></sub>
        </a>
        </td>
  </tr>
</table>