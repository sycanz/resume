#import "utils.typ": resume, term, leadershipExperience, skill, styled-link, findMe, badge-text, project-heading, linkWrapper

#show link: set text(fill: blue)
#show link: underline

#resume(
  name: "Aiden Chan Kai Ming",
  [
    #[= Aiden Chan Kai Ming]

    #block(
      below: 6pt,
    )

    #findMe((
      (name: "email", link: "mailto:aidenchan0397@gmail.com", display: "Email"),
      (name: "github", link: "https://github.com/sycanz", display: "GitHub"),
      (name: "linkedin", link: "https://www.linkedin.com/in/aiden-c-a504a7246/", display: "LinkedIn")
    ))

    == Work Experience

    === VM & Security Engineering Intern \@ Grab \
    #term[July 2025 --- December 2025][On Site]

    - Architected and deployed a Breach and Attack Simulation (BAS) platform to facilitate collaborative Purple Team exercises, utilizing Terraform and Kubernetes (EKS) to build a scalable, automated environment for threat validation.
    - Engineered an automated ETL pipeline using Python and GitLab CI to ingest security telemetry into an AWS S3 data lake, centralizing critical data for enterprise-wide visibility.
    - Developed a centralized Vulnerability Management (VM) Governance dashboard, utilizing complex SQL to aggregate risk metrics and provide stakeholders with actionable insights into the organization's security posture.
    - Led the end-to-end evaluation and implementation of new security infrastructure, bridging the gap between Red and Blue teams by automating attack scenarios and defensive control testing.
  
    == Education

    === Bachelor in Computer Science (Hons. Cybersecurity) \
    _Multimedia University, Cyberjaya_\
    #term[Aug 2023 --- July 2026][Cyberjaya, MY]
    #text(weight: "medium")[ | CGPA: 3.76]

    == Leadership Experience

    #text(weight: "bold")[=== Co-President] \
    #leadershipExperience[Hackerspace MMU][May 2025 --- Present] \
    Achieved approx. 195 registrations, provision semesterly hackathon, setup venue every tuesday for Hackerspace session, work on side-projects.

    #text(weight: "bold")[=== President] \
    #leadershipExperience[MMU Esports Club][April 2023 --- July 2025] \
    MoU signing between MMU and UniPin, secured partnership with UniPin and CRIT Esports, restructured organisation, organised university-level tournament, led 40 committee members, broadcasting team in MPLSG Season 9
    #block(
      below: 2pt,
    )

    == Languages
    - Professional: English
    - Conversational: Chinese, Malay
    #block(
      below: 5pt,
    )

    == Participations
    San Diego CTF, Rentas CTF, SD CTF 2024, and L3akCTF 2024, Great Malaysia AI Hackathon by AWS

    == Technical Skills
    #block(
      spacing: 1pt,
    )[
      #badge-text("Language", "Python · Javascript · TypeScript · Bash")
      #badge-text("AWS", "Lambda · CloudWatch · EC2 · S3 · VPC · EKS")
      #badge-text("CI/CD", "GitHub Actions · GitLab CI/CD")
      #badge-text("Tools", "Docker · Kubernetes · Terraform")
      #badge-text("Databases", "MySQL · PostgreSQL")
    ]\

    // == Award
    // #block(
    //   spacing: 0.65em,
    // )[
    //   - Top 10 Finalist of Sustainable Smart City Hackathon
    //   - MMU Merit Scholarship
    // ]
    // #block(
    //   below: 10pt,
    // )

    #colbreak()

    == Projects

    === Schedulr - Timetable management system (#link("https://www.mmuschedulr.com/")[Website])
      - Open-source cross-browser extension for MMU students and lecturers to automate the process of transferring timetables from university portal to digital calendars
      - Eliminates manual data entry, turning time-consuming hour-long task into a few-second process. Has fixes for common data inconsistency in the university portal
      - Setup proper environment (dev/stg/prd) and github action to streamline development process, monitor project with sentry and report issues to slack channel with webhook
      - Tech: JavaScript, HTML, CSS, Google Calendar API, OAuth 2.0, Cloudflare Workers, Supabase, Rollup, GitHub Actions
      - Skills: GCP Deployment, CI/CD, Secrets Management, REST API, Environment Management, Monitoring/Alerting
    #block(
      below: 3pt,
    )

    === Automated DevSecOps Pipeline
      - Engineered a hardened CI/CD pipeline using GitHub Actions to enforce automated security gates, ensuring secured container images reach the staging environment
      - Developed an automated remediation service that identifies dependency vulnerabilities and programmatically generates MR to reduce manual security toil and MTTR
      - Implemented infrastructure-as-code (IaC) scanning to detect security misconfigurations in templates before provisioning, establishing proactive security posture
      - Tech: GH Actions, Python, Docker, Trivy, Gitleaks, Terraform
      - Skills: DevSecOps, Shift-Left Security, CI/CD Automation, Vulnerability Management, Python Development
    #block(
      below: 5pt,
    )

    === Cloud-Native Security Governance & Observability
      - Deployed a secure, scalable K8s cluster utilizing admission controllers to enforce Policy-as-Code/programmatically block non-compliant workload configurations
      - Architected a centralized security observability layer by streaming audit logs into ELK/Prometheus stack, enabling real-time detection of API anomalies and forensic analysis
      - Integrated HashiCorp Vault for dynamic secrets management, eliminating hardcoded credentials and streamlining secure access control across microservices
      - Tech: AWS EKS, Kubernetes, Kyverno, HashiCorp Vault, Prometheus, Grafana, ELK Stack
      - Skills: Cloud Security, Policy-as-Code, Observability, Secrets Management, Zero-Trust Architecture
    #block(
      below: 5pt,
    )

    === Homelab
      // - My workstation (linux mint) and server (debian) that runs multiple docker containers are interconnected and remotely accessible through tailscale ssh.
      // - System and container are monitored through cAdvisor and node exporter with Grafana dashboard for resource management
      // - Tech: cAdvisor, node exporter, prometheus, grafana, tailscale, docker
      // - Skills: Linux, 
      // - Architected and maintained a self-hosted environment using Docker to streamline the deployment and management of multiple containerized services on a Debian-based server.
      // - Implemented a secure remote access solution via Tailscale SSH, enabling encrypted, low-latency connectivity between a Linux Mint workstation and backend infrastructure.
      // - Developed a centralized observability stack utilizing Prometheus, cAdvisor, and Node Exporter to visualize system health and container performance metrics through custom Grafana dashboards.
      - Orchestrated a containerized environment on Debian using Docker Compose to enforce IaC principles, ensuring repeatable deployment and management of services.
      - Deployed a secure, encrypted remote-access layer via Tailscale SSH and a unified observability stack for real-time monitoring of system and container health.
      - Tech: Docker (Compose), Tailscale, Prometheus, Grafana, cAdvisor, Node Exporter.
      - Key: SysAdmin, Network Security, Observability & Monitoring, IaC, Linux.
      // - Tech Stack: Docker, Tailscale, Prometheus, Grafana, cAdvisor, Node Exporter
      // - Key Skills: SysAdmin, Network Security, Observability & Monitoring, IaaC principles, Linux.
    
    // === RatPack - Ready Assessment Test Platform
    //   - Deployed application to Heroku production environment
    //   - Managed domain acquisition, DNS config, URL routing
    //   - Implemented Self-Service Password Reset (SSPR) with Mailgun integration
    #block(
      below: 5pt,
    )

    == Referee
    Roy Chiu, Security Automation and Detection Team Manager \@ Grab
    #findMe((
      (name: "none", link: "mailto:manshan.chiu@grabtaxi.com", display: "manshan.chiu@grabtaxi.com"),
    ))
])
