# CONTRIBUTION CONVENTIONS GUIDELINES:

## 1. How to Submit Issues and Pull Requests?

  ### ****SUBMITTING ISSUES****
  #### Before submitting an issue, please ensure the following:
  * **Search Existing Issues:** Check if your issue has already been raised. Duplicates will be closed.
  * **Provide Clear Details:** When submitting a new issue, include:
    * **Issue Title**: A concise title that summarizes the problem.
    * **Description**: A detailed description of the issue.
    * **Reproduction Steps**: Clear steps to reproduce the problem.
    * **Expected Behavior**: What you expected to happen.
    * **Actual Behavior**: What actually happened, including any error messages or logs.
    * **Environment Details**: If relevant, specify the version of the code and your system details.
  
  ### ****SUBMITTING PULL REQUEST****
  #### To submit a pull request (PR), follow these steps:

   * **Fork the Repository**: Create a copy of the repository to your GitHub account by clicking the "Fork" button.
   * **Clone the Fork**: Clone your fork locally to work on your changes.
      ```bash
        git clone https://github.com/YOUR-USERNAME/PROJECT-NAME.git
   * **Create a Branch**: Use a meaningful branch name (see Branching Strategy).
      ```bash
        git checkout -b feature/short-description
   * **Make Changes**: Implement your changes while following the Coding Style Guidelines.
   * **Commit Changes**: Write clear and concise commit messages. Follow the format:
     ```bash
       git commit -m "Fix #<issue-number>: Describe the changes made"
   * **Push the Changes**: Push your branch to your forked repository.
     ```bash
       git push origin feature/short-description
   * **Create a Pull Request**: Go to the original repository, click "New Pull Request," and select your branch. Include:
     * A clear description of your changes.
     * A reference to any relevant issues by using Fixes "#(issue-number)".
     * Test results or any other relevant information.

## 2. Coding Style Guidelines

  #### **Follow these coding standards to ensure consistency across the project:**
  * **Indentation:** Use the specific indentation style for the project (e.g., 2 spaces, 4 spaces, or tabs). Check the project’s configuration files like .editorconfig or .prettierrc if present.
  * **Naming Conventions:**
    * **Variables and Functions:** Use camelCase for variables and function names.
    * **Classes:** Use PascalCase for class names.
    * **Constants:** Use UPPER_CASE for constants.
    * **Line Length**: Limit lines to a maximum of 80 or 100 characters, depending on the project guidelines.
  * **Comments:** Write meaningful comments:
    * Use // or /* */ for inline comments where necessary.
      Ensure function/methods are well-documented with JSDoc or a similar format.
  * **Testing:** Ensure your code is covered by unit tests if the project includes testing. Use descriptive names for test cases and keep tests small and focused.
  For more detailed coding guidelines, refer to the project’s coding style guide if one exists.

## 3. Branching Strategy

  #### We follow a **Gitflow**-inspired branching model to ensure an organized and efficient workflow.
  * **Main Branches:**
      * **main** (or **master**): The default branch. It should always contain stable, production-ready code.
      * **develop:** This branch contains the latest working code and is where new features are merged before going to production.
  
  * **Feature Branches:**
      * Create a feature branch from develop for new features or bug fixes.
      * Branch naming convention:
        * **Feature branch:** feature/<short-description>
        * **Bugfix branch:** bugfix/<short-description>
        * **Hotfix branch:** hotfix/<short-description>
      * Merge your feature branch back into **develop** when your work is done, and submit a pull request.
      
  * **Hotfix Branches:**
     * If an urgent bug needs fixing in production, create a hotfix/<description> branch off main, fix the issue, then merge it back into main and develop.
  
  * **Release Branches:**
    * When preparing a new production release, create a release/x.x.x branch from develop, make final adjustments, and merge it into both main and develop after testing.

## 4. Process for Code Review

  #### After you submit a pull request, it will go through the following review process:
  * **Automated Checks:**
    * Your code will be checked by automated tools (e.g., CI pipeline) for build success, tests, and style checks (if applicable). Ensure all tests pass before submitting the PR.
  
  * **Reviewer Assignment:**
    * A project maintainer or other contributors will be assigned to review your PR. They will check for:
      * Code correctness.
      * Adherence to Coding Style Guidelines.
      * Potential performance issues or security vulnerabilities.
      * Test coverage and functionality.

  * **Feedback:**
    * You may receive feedback or requests for changes. Please address the comments by pushing additional commits to the same branch.
    * For any non-code changes requested (e.g., documentation or formatting), make sure to fix them.

  * **Approval:**
    * Once the review is complete and all feedback is addressed, the reviewer will approve the PR.

  * **Merging:**
    * After approval, the PR will be merged into the target branch (typically develop for features or main for hotfixes).
    * The PR will be **squash merged** to maintain a clean commit history.

  * **Post-Merge:**
  *   After the merge, ensure any linked issues are automatically closed by the PR.

**Final Note**
Thank you for following these guidelines and helping improve the project! Your contributions are greatly appreciated. For any inquiries or concerns, please contact [Contact Information](silab.upm@up.edu.ph).
