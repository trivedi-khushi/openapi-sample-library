## ℹ️  About the Project - 
Curated library of 20+ real-world API examples with request/response schemas and CI automation for docs generation. [Read about the project workflow & design decisions!](https://khushitrivedi.hashnode.dev/openapi-sample-library-project)

## 📎 How to Contribute?
Read the Contribution Guide [here](https://khushitrivedi.hashnode.dev/openapi-sample-library-project#heading-contribution-guidelines)

## Key Project Insights (KPIs of this Project)
1. Use of `$ref` to refere & split all the API spec instead of  listing them all in one .yaml file. Gives reusability, efficiant maintanace.

2. Containerized environment using Docker to serve the API documentation locally via Redoc and Swagger UI.

3. The project runs entirely in Docker without requiring to set-up any local dependencies like: Node.js, Python. simply install [Docker](https://www.docker.com/products/docker-desktop/)

4. Anyyone can clone and preview the spec using a one-liner Docker command. (irrecspective of Operating system)

5. Bundling Workflow- this project comes with built-in automcation to bundle all the OpenAPI specs into a single `bundled.yaml` file (for CI/CD or publishing).

6. Contribute to this project without the tension of accidentally committing your local/generate files. This project file `.gitignore` automatically ignores committing such files.


## 🧪 Selected APIs with their strengths:

#### [GitHub API](https://docs.github.com/en/rest)

- **Strengths:** Version control, Developer-centric, CRUD operations on repos/issues.

- **Good Endpoints:** GET `/users/{username} (Retrieve user details)` POST `/repos/{owner}/{repo}/issues (Create issue)`

#### [Stripe API](https://stripe.com/docs/api)

- **Strengths:** Payment & Finance operations, Secure transaction examples.

- **Good Endpoints:** POST `/customers (Create new customer)` GET `/charges/{id} (Retrieve payment details)`

#### [Jira API](https://developer.atlassian.com/cloud/jira/platform/rest/v3/intro/)

- **Strengths:** Project management, agile methodology, issues, tickets.

- **Good Endpoints:** GET `/issue/{issueIdOrKey} (Retrieve issue details)` POST `/issue (Create new issue)`

#### [Notion API](https://developers.notion.com/reference)

- **Strengths:** Documentation management, productivity, content structures.

- **Good Endpoints:** POST `/pages (Create new page)` GET `/databases/{database_id}/query (Retrieve database content)`

#### [Slack API](https://api.slack.com/methods)
- **Strengths:** Communication, messaging, webhooks.

- **Good Endpoints:** POST `/chat.postMessage (Send a message)`GET `/conversations.history (Retrieve message history)`

## 🛠️ Troubleshooting

- Ensure file paths in `$ref` are correct and relative.

- Docker port `8080` must not be in use by another application.

- Validate the spec using Swagger Editor or redocly lint.

- Avoid using backslashes (`\`) on Windows in your YAML. Always use forward slashes (`/`), even on Windows.

- Check carefully for formatting while working with YAML files.

- Try using `docker pull redocly/redoc` incase of an error like "Docker Image Not Found"

- **Reach out to https://www.github.com/trivedi-khushi for any queries/concerns.** 🙋‍♀️
