# Terraform Beginner Bootcamp 2023

## Project outline
**TerraTowns** serves as a centralized platform where terraformers can explore and link up with each other's self-hosted personal websites (TerraHouse), reminiscent of the Geocities style of 2023. The terraformers utilize Infrastructure as Code (IaC) to launch their **TerraHouse**, a Content Management System (CMS) that empowers them to create their own personal websites and integrate them into the TerraTowns network.

## TerraTowns Architectural Diagram 
| Week 0 - Preweek                    | Week 1 - Build                      |
| ----------------------------------- | ----------------------------------- |
| ![Wk0](https://github.com/kriteja/terraform-beginner-bootcamp-2023/assets/40818088/04a9cab6-fbc2-44d7-a1a3-ba7d7cf11d71) | ![Wk1](https://github.com/kriteja/terraform-beginner-bootcamp-2023/assets/40818088/9d86ff44-2737-457b-b6ab-073d13b2a14d) |

| Week 2 - Connect                    | Week 3 -                            |
| ----------------------------------- | ----------------------------------- |
|![Wk2](https://github.com/kriteja/terraform-beginner-bootcamp-2023/assets/40818088/41b98ffe-d294-4fd4-8327-e28dda0ff625) | ![Wk2](https://github.com/kriteja/terraform-beginner-bootcamp-2023/assets/40818088/41b98ffe-d294-4fd4-8327-e28dda0ff625) |


## Terraform Root Module Structure 
```
PROJECT_ROOT
│
├── main.tf                 # everything else.
├── variables.tf            # stores the structure of input variables
├── terraform.tfvars        # the data of variables we want to load into our terraform project
├── providers.tf            # defined required providers and their configuration
├── outputs.tf              # stores our outputs
└── README.md               # required for root modules
```
## Weekly Journals
- [Week 0 Journal](journal/week0.md)
- [Week 1 Journal](journal/week1.md)

## Extras
- [Github Markdown TOC Generator](https://ecotrust-canada.github.io/markdown-toc/)
