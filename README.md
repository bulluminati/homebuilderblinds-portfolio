# HomeBuilderBlinds - Full-Stack E-Commerce Platform

> Production-grade React/TypeScript e-commerce platform with B2B integrations, property management, and comprehensive admin tools.

[![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=flat&logo=typescript&logoColor=white)](https://www.typescriptlang.org/)
[![React](https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB)](https://reactjs.org/)
[![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=flat&logo=supabase&logoColor=white)](https://supabase.com/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=flat&logo=postgresql&logoColor=white)](https://www.postgresql.org/)

## Overview
<img width="1852" height="962" alt="Screenshot from 2025-12-01 13-15-25" src="https://github.com/user-attachments/assets/81bb68f5-d33c-43ef-be46-329b99182905" />
<img width="1852" height="962" alt="Screenshot from 2025-12-01 13-30-25" src="https://github.com/user-attachments/assets/e0612f87-2f0b-4f84-87da-6aa54bcb6102" />
<img width="1852" height="962" alt="Screenshot from 2025-12-01 13-15-04" src="https://github.com/user-attachments/assets/eb7f079c-027d-4b77-9fd4-66edb0792be7" />

Full-stack e-commerce platform built for a real business. Handles customer-facing storefronts, internal warehouse operations, B2B procurement integrations, and property management workflows.

**Production system**: 1000+ files, 37+ API endpoints, 177+ database migrations, real users.

## Key Features

### E-Commerce
- 5 product categories with dynamic pricing engine
- Shopping cart with Stripe payment integration
- Complete order lifecycle management

### Property Management
- Multi-property support for commercial clients
- Room-based window organization
- Measurement tracking and scheduling
- Progress tracking dashboards

### B2B Integrations
- RealPage punch-out integration (cXML/OASIS)
- Entrada integration
- RESTful APIs for catalog and order management

### Operations & Admin
- Operations dashboard (work orders, cutting, inventory)
- Accounting system (invoices, payments, AR management)
- Measurement scheduling calendar
- Warehouse management tools

## Technology Stack

**Frontend:**
- React 18 with TypeScript
- Vite, Tailwind CSS, shadcn/ui
- React Router, TanStack Query
- React Hook Form with Zod

**Backend:**
- Supabase (PostgreSQL + Auth + Edge Functions)
- 37+ Edge Functions for API endpoints
- Row Level Security (RLS)
- 177+ database migrations

**Integrations:**
- Stripe (payments)
- RealPage & Entrada (B2B procurement)
- Twilio (SMS/voice)
- EmailJS (notifications)

## Project Statistics

- **1000+ files** in codebase
- **379+ components** (313 TSX, 61 TS)
- **73+ pages**
- **37+ API endpoints**
- **177+ database migrations**

## Architecture

- **Component Structure**: 52 shadcn/ui components, 53+ admin components, 22 property management components
- **Database Design**: Complex relational schema with RLS policies, optimized queries
- **API Architecture**: Serverless Edge Functions, RESTful design, webhook handling

## Documentation

Complete technical documentation available in [`CODEBASE_INDEX.md`](./CODEBASE_INDEX.md) - comprehensive 900+ line index covering architecture, components, database schema, API endpoints, and integrations.

## Repository Status

The full codebase is private (production system). This repository contains project documentation, architecture overview, and technical specifications.
