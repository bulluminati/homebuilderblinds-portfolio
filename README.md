# HomeBuilderBlinds - Full-Stack E-Commerce Platform

> A production-grade React/TypeScript e-commerce platform for window treatments with B2B integrations, property management, and comprehensive admin tools.

[![TypeScript](https://img.shields.io/badge/TypeScript-007ACC?style=flat&logo=typescript&logoColor=white)](https://www.typescriptlang.org/)
[![React](https://img.shields.io/badge/React-20232A?style=flat&logo=react&logoColor=61DAFB)](https://reactjs.org/)
[![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=flat&logo=supabase&logoColor=white)](https://supabase.com/)
[![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=flat&logo=postgresql&logoColor=white)](https://www.postgresql.org/)

## 🎯 Overview

HomeBuilderBlinds is a comprehensive full-stack e-commerce platform I built and maintain for a real business. It handles everything from customer-facing storefronts to internal warehouse operations, B2B procurement integrations, and complex property management workflows.

**This is not a tutorial project** - it's a production system with 1000+ files, real users, and real business requirements.

## ✨ Key Features

### 🛒 E-Commerce Core
- **5 Product Categories**: Wood, Faux Wood, Roller Shades, Vertical, and Mini Blinds
- **Dynamic Pricing Engine**: Real-time calculations based on dimensions and specifications
- **Shopping Cart**: Session persistence with Stripe payment integration
- **Order Management**: Complete order lifecycle from creation to fulfillment

### 🏢 Property Management
- Multi-property support for commercial clients
- Room-based window organization
- Measurement tracking and history
- Floor plan integration
- Progress tracking dashboards

### 🔗 B2B Integrations
- **RealPage Punch-Out**: Enterprise procurement system integration (cXML/OASIS)
- **Entrada Integration**: Additional B2B catalog and order processing
- **API Endpoints**: RESTful APIs for catalog and order management

### 🏭 Operations & Admin Tools
- **Operations Dashboard**: Work orders, cutting operations, inventory management
- **Accounting System**: Invoices, payments, AR management, financial reports
- **Measurement Scheduling**: Calendar-based appointment system
- **Warehouse Management**: Pick sheets, will call, delivery routing

## 🛠️ Technology Stack

### Frontend
- **React 18** with TypeScript
- **Vite** for build tooling
- **shadcn/ui** component library (50+ components)
- **Tailwind CSS** for styling
- **React Router** for navigation
- **TanStack Query** for data fetching
- **React Hook Form** with Zod validation

### Backend
- **Supabase** (PostgreSQL + Auth + Real-time + Edge Functions)
- **37+ Edge Functions** for API endpoints
- **Row Level Security (RLS)** for data protection
- **177+ Database Migrations**

### Integrations
- **Stripe** for payment processing
- **RealPage** for B2B procurement
- **Entrada** for additional B2B integration
- **Twilio** for SMS/voice
- **EmailJS** for notifications

### Development Tools
- **Cursor** - Primary IDE with AI-powered development assistance
- **Git** - Version control
- **TypeScript** for type safety
- **ESLint** for code quality
- **PostCSS** with Autoprefixer

## 📊 Project Statistics

- **1000+ files** in codebase
- **379+ components** (313 TSX, 61 TS)
- **73+ pages**
- **37+ API endpoints** (Supabase Edge Functions)
- **177+ database migrations**
- **100+ documentation files**

## 🏗️ Architecture Highlights

### Component Structure
- **52 shadcn/ui components** with Radix UI primitives
- **53+ admin components** for dashboards and management
- **22 property management components**
- **Custom hooks** for business logic
- **Context providers** for state management

### Database Design
- Complex relational schema with proper relationships
- Row Level Security policies for data protection
- Optimized queries and indexes
- Comprehensive migration history

### API Architecture
- Serverless Edge Functions for scalability
- RESTful API design
- Webhook handling for external integrations
- Real-time capabilities via Supabase

## 🚀 What Makes This Special

1. **Production-Ready**: This isn't a demo - it's a real business application handling real transactions
2. **Full-Stack Expertise**: From React components to database design to API development
3. **Complex Business Logic**: Dynamic pricing, property management, B2B integrations
4. **Scalable Architecture**: Built to handle growth with proper separation of concerns
5. **Real-World Problem Solving**: Internal tools that warehouse teams use daily

## 📁 Project Structure

```
homebuilderblinds/
├── src/
│   ├── components/     # 379+ React components
│   ├── pages/          # 73+ application pages
│   ├── hooks/          # Custom React hooks
│   ├── lib/            # Business logic and utilities
│   └── contexts/       # State management
├── supabase/
│   ├── functions/      # 37+ Edge Functions
│   └── migrations/     # 177+ database migrations
└── docs/               # 100+ documentation files
```

## 📚 Documentation

For complete technical documentation, see [`CODEBASE_INDEX.md`](./CODEBASE_INDEX.md) - a comprehensive 900+ line index covering:
- Complete architecture overview
- All components and pages
- Database schema
- API endpoints
- Integration details
- Development workflows

## 💼 Business Impact

This platform enables:
- **E-commerce sales** for individual customers
- **B2B procurement** via RealPage and Entrada integrations
- **Property management** for commercial clients
- **Warehouse operations** with internal tools
- **Financial management** with accounting dashboards

## 🔒 Repository Status

**Note**: The full codebase is private (production system for a real business). This repository contains:
- Project documentation
- Architecture overview
- Screenshots of the application
- Technical specifications

## 👨‍💻 About the Developer

Self-taught full-stack developer with 10+ years of experience building production applications. Specialized in React, TypeScript, Python, and modern cloud infrastructure.

**Key Skills Demonstrated:**
- Full-stack development (React + Node.js/Edge Functions)
- Database design and optimization (PostgreSQL)
- API development and integration
- Complex business logic implementation
- Internal tool development
- B2B system integration

---

**Built with ❤️ using React, TypeScript, and Supabase**

For questions or to discuss the project, feel free to reach out!

