# HomeBuilderBlinds Codebase Index
**Generated:** December 1, 2025

## 📋 Table of Contents
1. [Project Overview](#project-overview)
2. [Technology Stack](#technology-stack)
3. [Project Structure](#project-structure)
4. [Frontend Architecture](#frontend-architecture)
5. [Backend Architecture](#backend-architecture)
6. [Database Schema](#database-schema)
7. [Edge Functions](#edge-functions)
8. [Integrations](#integrations)
9. [Scripts & Utilities](#scripts--utilities)
10. [Documentation](#documentation)
11. [Key Workflows](#key-workflows)

---

## 🏗️ Project Overview

**HomeBuilderBlinds** is a comprehensive React-based e-commerce platform for window treatments (blinds, shades, etc.) with property management capabilities and B2B integrations.

### Target Users
- **Individual Consumers**: Shopping for home window treatments
- **Property Managers**: Managing multiple properties and units
- **Commercial Clients**: Bulk ordering with procurement system integration
- **Enterprise Clients**: RealPage and Entrada punch-out catalog functionality

### Core Features
- 5 main product categories (Wood, Faux Wood, Roller Shades, Vertical, Mini Blinds)
- Dynamic pricing based on dimensions and specifications
- Real-time pricing calculator
- Shopping cart with session persistence
- Stripe payment integration
- Order tracking and management
- Multi-property support for commercial clients
- Room-based window organization
- Measurement tracking and history
- B2B punch-out integrations (RealPage, Entrada)

---

## 🛠️ Technology Stack

### Frontend
- **React 18** with TypeScript
- **Vite** for build tooling (port 8080)
- **shadcn/ui** component library (50+ components)
- **Tailwind CSS** for styling
- **React Router v6** for navigation
- **TanStack Query** for data fetching
- **React Hook Form** for form management
- **Zod** for schema validation
- **Stripe** for payment processing (`@stripe/react-stripe-js`, `@stripe/stripe-js`)
- **Vercel Analytics** for analytics

### Backend
- **Supabase** (PostgreSQL + Auth + Real-time + Edge Functions)
- **Supabase Edge Functions** for serverless API endpoints
- **Row Level Security (RLS)** for data protection
- **PostgreSQL** with comprehensive schema

### Development Tools
- **Cursor** - Primary IDE with AI-powered development assistance
- **Git** - Version control and collaboration
- **TypeScript** for type safety
- **ESLint** for code quality
- **PostCSS** with Autoprefixer

---

## 📁 Project Structure

```
├── integrations/                    # ALL external integrations
│   ├── google-merchant-center/     # Google upload system
│   │   ├── uploaders/              # API upload scripts
│   │   ├── feed-generators/        # XML/CSV feed scripts
│   │   ├── config/                 # Configuration
│   │   └── feeds/                  # Generated feeds
│   ├── ebay/                       # eBay integration
│   │   ├── feed-generation/        # Feed scripts
│   │   └── feeds/                  # Generated feeds
│   ├── realpage/                   # RealPage punch-out
│   └── stripe/                     # Payment processing
│
├── automation/                      # Automated processes
│   ├── product-uploads/            # Google, eBay uploads
│   ├── catalog-generation/         # Catalog scripts
│   ├── price-calculation/          # Pricing automation
│   └── data-sync/                  # Data synchronization
│
├── operations/                      # Business operations
│   ├── accounting/                 # Accounting functions
│   ├── order-processing/           # Order management
│   └── inventory/                 # Inventory scripts
│
├── infrastructure/                  # System infrastructure
│   ├── database/                   # SQL scripts, migrations
│   ├── api/                        # API handlers
│   ├── edge-functions/            # Supabase functions
│   └── load-testing/              # Performance testing
│
├── utilities/                       # Helper scripts
│   ├── data-migration/            # Migration scripts
│   ├── admin-tools/               # Admin utilities
│   └── development/               # Dev tools
```

---

## 🎨 Frontend Architecture

### Components (`src/components/`)

#### UI Components (`src/components/ui/`)
- **52 shadcn/ui components** with Radix UI primitives
- Consistent design system with Tailwind CSS
- Accessible and keyboard-navigable
- Examples: Button, Dialog, DropdownMenu, Form, Input, Table, Card, etc.

#### Product-Specific Components
- **Faux Wood** (`src/components/faux-wood/`): 8 files
  - Pricing, dimensions, customization
- **Mini Blinds** (`src/components/mini-blinds/`): 6 files
  - Options, pricing, product info
- **Ordering** (`src/components/ordering/`): 12 files
  - Catalog, bulk ordering, product selection

#### Property Management (`src/components/property/`)
- **22 components** for property, building, unit, and room management
- Floor plan integration
- Measurement tracking
- Progress monitoring

#### Admin Components (`src/components/admin/`)
- **53+ components** for admin dashboards
- **Accounting** (`admin/accounting/`): 2 components
- **Commercial** (`admin/commercial/`): 30 components
- **Operations** (`admin/operations/`): 16 components
- **System** (`admin/system/`): 2 components
- Configuration managers for RealPage and Entrada

#### Account Components (`src/components/account/`)
- **8 components** for account management
- Dashboard, orders, properties, measurements, settings

#### Cutting Components (`src/components/cutting/`)
- **4 components** for CNC cutting operations
- Interface, modal, table, statistics

#### Navigation & Layout
- `Navbar.tsx` / `NavbarWithCart.tsx` - Navigation bars
- `DesktopNavigation.tsx` - Desktop menu
- `MobileMenu.tsx` - Mobile-responsive navigation
- `SimplifiedNavbar.tsx` - Alternative navigation
- `Footer.tsx` - Footer component

#### Other Key Components
- `Hero.tsx` - Hero section
- `FeaturedProducts.tsx` - Product showcase
- `CartCounter.tsx` - Cart item counter
- `LiveChatWidget.tsx` / `RealTimeLiveChat.tsx` - Live chat
- `MeasurementGuide.tsx` - Measurement instructions
- `Reviews.tsx` - Product reviews
- `SchedulingModal.tsx` - Appointment scheduling
- `StructuredData.tsx` - SEO optimization
- `ScrollToTop.tsx` - UX enhancement

### Pages (`src/pages/`)

#### Public Pages (11)
- `Index.tsx` - Homepage with hero, featured products, and CTAs
- `AboutUs.tsx` - Company information
- `ContactUs.tsx` - Contact information and forms
- `Careers.tsx` - Career opportunities
- `FieldCareers.tsx` - Field positions
- `LeadershipCareers.tsx` - Leadership positions
- `CorporateResponsibility.tsx` - Corporate responsibility
- `ChildSafety.tsx` - Child safety information
- `ExpertInstallation.tsx` - Professional installation services
- `PrivacyPolicy.tsx` - Privacy policy
- `TermsOfService.tsx` - Terms of service
- `ShippingInfo.tsx` - Shipping information
- `Returns.tsx` - Returns policy

#### Product Pages (5)
- `FauxWoodBlinds.tsx` - Faux wood blinds product page
- `WoodBlinds.tsx` - Wood blinds product page
- `RollerShades.tsx` - Roller shades product page
- `VerticalBlinds.tsx` - Vertical blinds product page
- `MiniBlinds.tsx` - Mini blinds product page
- `ProductDetails.tsx` - Product detail page
- `ProductListing.tsx` - Product listing page

#### Account Pages (7)
- `Account.tsx` - Main account page
- `AccountCreation.tsx` - Account creation
- `AccountSettings.tsx` - Settings page
- `Login.tsx` - Login page
- `ForgotPassword.tsx` - Password recovery
- `ResetPassword.tsx` - Password reset
- `EmailConfirmation.tsx` - Email confirmation

#### Shopping Pages (7)
- `Cart.tsx` - Shopping cart
- `Checkout.tsx` - Checkout page (lazy loaded)
- `CheckoutSuccess.tsx` - Success page
- `CheckoutCancel.tsx` - Cancel page
- `TrackOrder.tsx` - Order tracking
- `FreeSamples.tsx` - Sample requests
- `StartReturn.tsx` - Return initiation

#### Property Management (2)
- `Properties.tsx` - Properties page
- `MeasureInstall.tsx` - Measurement/installation

#### Admin Pages (`src/pages/admin/`)

**Operations** (`admin/operations/`): 11 pages
- `OperationsDashboard.tsx` - Main operations dashboard
- `WorkOrders.tsx` - Work order management
- `PickSheet.tsx` - Pick sheet generation
- `Inventory.tsx` - Inventory management
- `CuttingInterface.tsx` - Cutting operations
- `CNCMonitor.tsx` - CNC machine monitoring
- `InstallDelivery.tsx` - Installation and delivery
- `MeasurementScheduling.tsx` - Measurement scheduling
- `Suppliers.tsx` - Supplier management
- `WillCall.tsx` - Will call management

**Accounting** (`admin/accounting/`): 5 pages
- `AccountingDashboard.tsx` - Main accounting dashboard
- `Invoices.tsx` - Invoice management
- `Payments.tsx` - Payment processing
- `ARManagement.tsx` - Accounts receivable
- `FinancialReports.tsx` - Financial reporting

**Commercial** (`admin/commercial/`): 7 pages
- `ClientManagement.tsx` - Client management
- `Orders.tsx` - Order management
- `Customers.tsx` - Customer management
- `Analytics.tsx` - Analytics dashboard
- `Quoting.tsx` - Quote management
- `MeasurementRequests.tsx` - Measurement requests
- `Returns.tsx` - Returns management

**Sales** (`admin/sales/`): 7 pages
- `SalesDashboard.tsx` - Sales dashboard
- `ClientOnboarding.tsx` - Client onboarding
- `IntegrationManagement.tsx` - Integration management
- `ClientManagement.tsx` - Client management
- `LeadManagement.tsx` - Lead management
- `TestConfiguration.tsx` - Test configuration
- `ClientAnalytics.tsx` - Client analytics

**System** (`admin/system/`): 4 pages
- `ChatAdmin.tsx` - Chat administration
- `RealPageConfig.tsx` - RealPage configuration
- `EntradaConfig.tsx` - Entrada configuration
- `SystemMonitor.tsx` - System monitoring

**Other Admin Pages:**
- `AdminDashboard.tsx` - Main admin dashboard

#### Other Pages
- `MobileChat.tsx` - Mobile chat interface
- `NotFound.tsx` - 404 page

### Hooks (`src/hooks/`)

#### Admin Hooks (`hooks/admin/`)
- **13 admin-specific hooks** for data management
- Examples: `useAccounting.tsx`, `useOperations.tsx`, etc.

#### Custom Hooks
- `useAdminAuth.ts` - Admin authentication
- `useColorData.tsx` - Color data management
- `useCutting.tsx` - Cutting operations
- `useEntradaSession.ts` - Entrada session management
- `useGTMPageview.ts` - Google Tag Manager pageview tracking
- `useHomepageAnimation.ts` - Homepage animations
- `useJobApplication.tsx` - Job application handling
- `useMeasurementCart.ts` - Measurement cart management
- `useProductData.ts` - Product data fetching
- `useProperties.ts` - Property management
- `usePropertyAuth.ts` - Property authentication
- `useRealPageIntegration.ts` - RealPage integration
- `useRealPageProducts.ts` - RealPage products
- `useRealPageSession.ts` - RealPage session management
- `use-mobile.tsx` - Mobile detection

### Contexts (`src/contexts/`)
- `CartContext.tsx` - Global cart state management
- `SampleContext.tsx` - Sample request management
- `SelectionContext.tsx` - Product selection state

### Libraries (`src/lib/`)
- `supabaseClient.ts` - Supabase client configuration
- `cartClient.ts` - Cart operations
- `cartTypes.ts` - Cart type definitions
- `dynamicPricing.ts` - Dynamic pricing calculations
- `fauxWoodPricingUtils.ts` - Faux wood pricing utilities
- `unifiedPricing.ts` - Unified pricing system
- `orderUtils.ts` - Order utilities
- `analyticsUtils.ts` - Analytics utilities
- `conversionTracking.ts` - Conversion tracking
- `gclidTracking.ts` - Google Click ID tracking
- `royalWindowsForm.ts` - Royal Windows form handling
- `royalWindowsOrder.ts` - Royal Windows order processing
- `royalWindowsProductMapping.ts` - Product mapping
- `supplierEmails.ts` - Supplier email management
- `exportUtils.ts` - Export utilities
- `utils.ts` - General utilities
- `types.ts` - Type definitions
- `DatabaseSchema.ts` - Database schema types

---

## ⚙️ Backend Architecture

### Supabase Edge Functions (`supabase/functions/`)

#### RealPage Integration (7 functions)
1. **`punchout-catalog`** - RealPage punch-out catalog handler
   - Handles cXML/OASIS protocol
   - Validates requests using account number and shared secret
   - Creates punch-out sessions
   - Returns cXML response with redirect URL

2. **`realpage-auth`** - RealPage authentication
   - Handles authentication requests from RealPage

3. **`realpage-invoices`** - RealPage invoice generation
   - Generates invoices for RealPage orders
   - Sends invoices to RealPage system

4. **`realpage-order-integration`** - Order integration
   - Processes RealPage orders into internal system

5. **`realpage-price-availability`** - Price/availability checks
   - Real-time price and availability queries
   - Returns pricing for RealPage catalog items

6. **`submit-punchout-order`** - Submit orders back to RealPage
   - Processes completed cart and submits to RealPage system

7. **`create-realpage-config`** - Create RealPage configuration
   - Creates client RealPage configurations

#### Entrada Integration (4 functions)
8. **`entrada-punchout-catalog`** - Entrada punch-out catalog
   - Similar to RealPage punch-out but for Entrada

9. **`entrada-order-integration`** - Entrada order integration
   - Processes Entrada orders

10. **`entrada-invoices`** - Entrada invoice generation
    - Generates invoices for Entrada orders

11. **`create-entrada-config`** - Create Entrada configuration
    - Creates client Entrada configurations

#### Payment Processing (4 functions)
12. **`create-checkout`** - Stripe checkout session creation
    - Creates Stripe checkout sessions
    - Handles payment initialization

13. **`process-stripe-payment`** - Stripe payment processing
    - Processes Stripe payment confirmations
    - Updates order status

14. **`stripe-webhook`** - Stripe webhook handler
    - Handles Stripe webhook events
    - Processes payment confirmations, refunds, etc.

15. **`process-ach-payment`** - ACH payment processing
    - Processes ACH payments from Chase banking
    - Updates invoice status and payment allocations

#### Accounting System (4 functions)
16. **`create-invoice-from-order`** - Invoice generation
    - Automatically creates invoices when orders are shipped
    - Creates invoice records and line items

17. **`generate-financial-report`** - Financial reporting
    - Creates various financial reports (P&L, AR aging, revenue by client)
    - Multiple export formats (JSON, CSV, PDF)

18. **`update-accounts-receivable`** - AR management
    - Manages overdue invoices and late fees
    - Calculates late fees, sends reminder emails

19. **`route-order`** - Order routing
    - Routes orders to appropriate processing systems

#### Communication (5 functions)
20. **`send-email-notification`** - Email notifications
    - Sends email notifications for various events

21. **`send-emailjs-notification`** - EmailJS notifications
    - Sends emails via EmailJS service

22. **`send-sms-notification`** - SMS notifications
    - Sends SMS notifications via Twilio

23. **`send-chat-message`** - Chat message handling
    - Handles chat messages between customers and admins

24. **`send-appointment-confirmation`** - Appointment confirmations
    - Sends appointment confirmation emails/SMS

#### Order Processing (3 functions)
25. **`send-order-confirmation`** - Order confirmation emails
    - Sends order confirmation emails to customers

26. **`create-cutting-orders-from-orders`** - Cutting order creation
    - Creates cutting orders from regular orders

27. **`cnc-control`** - CNC machine control
    - Controls CNC cutting machines

#### Other Functions (6 functions)
28. **`job-application`** - Job application processing
    - Processes job applications

29. **`regenerate-google-feed`** - Google Merchant feed
    - Regenerates Google Shopping feed

30. **`load-test-manager`** - Load test management
    - Manages load test results from K6/Artillery tests
    - Stores test metrics and provides statistics

31. **`smoke-tests`** - Smoke testing
    - Runs smoke tests on critical endpoints

32. **`twilio-voice-webhook`** - Twilio voice webhook
    - Handles Twilio voice call webhooks

#### Shared Utilities (`supabase/functions/_shared/`)
- `category-mapping.ts` - Category mapping utilities
- `cors.ts` - CORS configuration
- `cxml-utils.ts` - cXML utility functions
- `provider-detector.ts` - Provider detection logic

---


## 🔌 Integrations

### RealPage Integration
- **Punch-Out URL**: `/punchout/catalog`
- **Protocol**: cXML/OASIS
- **Flow**: RealPage → Redirect → Shop normally → Return to RealPage
- **Configuration**: Managed via `RealPageConfigurationManager`
- **Documentation**: `docs/integrations/REALPAGE_INTEGRATION.md`

### Entrada Integration
- **Punch-Out Catalog**: Similar to RealPage
- **Order Processing**: Separate order integration
- **Invoice Generation**: Entrada-specific invoice handling
- **Configuration**: Managed via `EntradaConfigurationManager`
- **Documentation**: `docs/ENTRADA_INTEGRATION.md`

### Stripe Integration
- **Payment Processing**: Checkout sessions, webhooks
- **Client Libraries**: `@stripe/react-stripe-js`, `@stripe/stripe-js`
- **Functions**: `create-checkout`, `process-stripe-payment`, `stripe-webhook`

### Twilio Integration
- **SMS Notifications**: Via `send-sms-notification` function
- **Voice Webhooks**: Via `twilio-voice-webhook` function
- **Chat**: Integrated with chat system

### Email Services
- **EmailJS**: Via `send-emailjs-notification` function
- **Direct Email**: Via `send-email-notification` function

### Google Services
- **Google Merchant Feed**: Via `regenerate-google-feed` function
- **Google Tag Manager**: Integrated via `useGTMPageview` hook
- **Google Analytics**: Via Vercel Analytics

### Royal Windows Integration
- **Form Submission**: `lib/royalWindowsForm.ts`
- **Order Processing**: `lib/royalWindowsOrder.ts`
- **Product Mapping**: `lib/royalWindowsProductMapping.ts`
- **URL**: Configurable via `VITE_ROYAL_WINDOWS_ORDERING_URL`

---

## 📜 Scripts & Utilities

### eBay Integration (`scripts/ebay/`)
- **`generate_ebay_feed.py`** - Generates eBay product feed CSV
- **`README.md`** - eBay integration documentation
- **`SETUP_INSTRUCTIONS.md`** - Setup instructions
- **`feeds/`** - Generated feed files

### Catalog Management (`scripts/catalog/`)
- **`convert_excel.py`** - Excel to CSV conversion
- **`create_expanded_catalog.py`** - Expanded catalog generation
- **`create_proper_catalog.py`** - Proper catalog format
- **`extract_pdf_text.py`** - PDF text extraction
- **`generate_complete_catalog.py`** - Complete catalog generation
- **`generate_realpage_catalog.py`** - RealPage-specific catalog

### Pricing Scripts
- **`analyze-faux-wood-pricing.js`** - Faux wood pricing analysis
- **`recalculate_roller_shade_prices_50pct.py`** - Roller shade price recalculation
- **`update_budget_cordless_pricing.py`** - Budget cordless pricing update
- **`update_mini_blind_from_ods.py`** - Mini blind pricing from ODS
- **`update_mini_blind_prices_with_margin.py`** - Mini blind margin updates
- **`update_wood_finish_pricing_from_ods.py`** - Wood finish pricing from ODS
- **`update_wood_pricing_from_ods.py`** - Wood pricing from ODS

### Image Processing
- **`gimp_remove_bg.py`** - GIMP background removal
- **`remove_background.py`** - Background removal script
- **`remove_vinyl_background.py`** - Vinyl-specific background removal
- **`optimize-images.sh`** - Image optimization script

### Data Management
- **`export-products.js`** - Product export utility
- **`check_products.js`** - Product validation
- **`check_products.sql`** - SQL product checks
- **`fix_vinyl_color.py`** - Vinyl color fixes
- **`importFauxWoodProducts.cjs`** - Faux wood product import

### Testing & Utilities (`scripts/utilities/`)
- **`check-realpage-identities.md`** - RealPage identity checking
- **`check-realpage-setup-request.sql`** - RealPage setup SQL
- **`get-poom.js`** - POOM (Purchase Order) retrieval
- **`get-poom-simple.sh`** - Simple POOM retrieval
- **`get-full-poom.sql`** - Full POOM SQL query
- **`analyze-punchout-logs.sql`** - Punch-out log analysis
- **`check-order-creation.sql`** - Order creation validation
- **`reset-admin-password.js`** - Admin password reset
- **`reset-password-fixed.js`** - Fixed password reset
- **`reset-password-simple.js`** - Simple password reset

### Other Scripts
- **`create-sample-order.js`** / **`create-sample-order.cjs`** - Sample order creation
- **`create-realistic-punchout-session.js`** - Punch-out session creation
- **`find-david-config.js`** - Configuration finder
- **`get-realpage-return-url.js`** - RealPage return URL getter
- **`validate_poom_xml.py`** - POOM XML validation
- **`reveal-stripe-key.js`** - Stripe key revealer
- **`get-apple-pay-file.sh`** - Apple Pay file getter
- **`check-vercel-deployment.sh`** - Vercel deployment checker
- **`test-conversion-tracking.js`** - Conversion tracking test

### Google Apps Script
- **`new_order_and_appointment_script.gs`** - Order and appointment Google Apps Script

---

## 📚 Documentation

### Main Documentation (`docs/`)

#### Database Documentation (`docs/database/`)
- **`DATABASE_SCHEMA_SUMMARY.md`** - Complete database schema overview
- **`MIGRATION_WORKFLOW.md`** - Migration workflow and best practices
- **`RLS_POLICY_UPDATE_NEEDED.md`** - Tables needing RLS policy updates
- **`ACCOUNTING_SETUP.md`** - Accounting system setup
- **`ACCOUNTING_TABLES_STATUS.md`** - Accounting tables status
- **`ADMIN_MIGRATION_PROGRESS.md`** - Admin migration progress
- **`DATABASE_INDEX_GOOGLE_RESIDENTIAL.md`** - Google residential database index

#### Integration Documentation (`docs/integrations/`)
- **`REALPAGE_INTEGRATION.md`** - RealPage integration guide
- **`REALPAGE_INTEGRATION_STATUS.md`** - RealPage integration status
- **`REALPAGE_SETUP_STATUS.md`** - RealPage setup status
- **`REALPAGE_UPDATE_EMAIL.md`** - RealPage update email
- **`ENTRADA_INTEGRATION.md`** - Entrada integration guide
- **`ENTRADA_VENDOR_SETUP_GUIDE.md`** - Entrada vendor setup
- **`ENTRADA_VENDOR_ACCESS_ANALYSIS.md`** - Entrada vendor access analysis
- **`PUNCHOUT_CATALOG_TEST_CHECKLIST.md`** - Punch-out catalog testing
- **`APPLE_PAY_SETUP.md`** - Apple Pay setup
- **`APPLE_PAY_CONFIGURE_DOMAINS.md`** - Apple Pay domain configuration
- **`APPLE_PAY_CRITICAL_CHECKLIST.md`** - Apple Pay critical checklist
- **`APPLE_PAY_DOMAIN_VERIFICATION_STEPS.md`** - Apple Pay verification steps
- **`APPLE_PAY_TROUBLESHOOTING.md`** - Apple Pay troubleshooting
- **`GOOGLE_PAY_INTEGRATION.md`** - Google Pay integration
- **`AMAZON_PAY_SETUP.md`** - Amazon Pay setup
- **`WALLET_PAYMENTS_LOCALHOST.md`** - Wallet payments localhost setup
- **`STRIPE_DOMAIN_VERIFICATION_CLICK_INSTRUCTIONS.md`** - Stripe domain verification

#### Status Documentation (`docs/status/`)
- **`CURRENT_CODEBASE_STATUS.md`** - Current codebase status
- **`SUPABASE_FUNCTIONS_STATUS.md`** - Edge functions deployment status
- **`SECURITY_AUDIT_2025.md`** - Security audit report
- **`SECURITY_SCALABILITY_AUDIT.md`** - Security and scalability audit
- **`CHANGES_LAST_48_HOURS.md`** - Recent changes log
- **`CHANGES_LAST_48_HOURS_REALPAGE.md`** - RealPage-specific changes

#### Previous Indexes (`docs/indexes/`)
- Multiple previous codebase indexes dating back to February 2025
- Latest: `CODEBASE_INDEX_2025-11-18.md`

#### Other Documentation
- **`TESTING_GUIDE.md`** - Testing guide
- **`TESTING_REPORT_HIGH_LEVEL.md`** - High-level testing report
- **`TEST_SCRIPTS_INVENTORY.md`** - Test scripts inventory
- **`PERFORMANCE_OPTIMIZATION_PLAN.md`** - Performance optimization
- **`IMAGE_OPTIMIZATION.md`** - Image optimization guide
- **`PRICING_TABLES_COMPLETE.md`** - Pricing tables documentation
- **`UNIFIED_PRICING_GUIDE.md`** - Unified pricing guide
- **`REST_API_QUICK_REFERENCE.md`** - REST API quick reference
- **`REST_API_DOCUMENTATION.md`** - REST API documentation
- **`REST_API_INTEGRATION_GUIDE.md`** - REST API integration guide
- **`CATALOG_INSTRUCTIONS.md`** - Catalog instructions
- **`SEARCH_VISIBILITY_STRATEGY.md`** - Search visibility strategy

### Root Documentation Files
- **`README.md`** - Main project README
- **`CODEBASE_INDEX.md`** - Previous codebase index
- **`GTM_GOOGLE_TAG_SETUP.md`** - Google Tag Manager setup
- **`GTM_PUBLISH_CHECKLIST.md`** - GTM publish checklist
- **`IDENTIFY_GOOGLE_TAG.md`** - Google tag identification
- **`GET_STRIPE_KEY.md`** - Stripe key retrieval
- **`GOOGLE_APPS_SCRIPT_URLS.md`** - Google Apps Script URLs
- **`CHANGE_PURCHASE_CONVERSION_TAG.md`** - Conversion tag changes
- **`check-conversion-tracking.md`** - Conversion tracking check

---

## 🔄 Key Workflows

### E-Commerce Flow
1. User browses products
2. User adds items to cart
3. User proceeds to checkout
4. Stripe payment processing
5. Order creation
6. Order confirmation email
7. Order fulfillment
8. Shipping notification

### RealPage Punch-Out Flow
1. RealPage user initiates punch-out
2. `punchout-catalog` function validates request
3. Punch-out session created
4. User redirected to shopping site
5. User shops normally
6. Cart submitted via `submit-punchout-order`
7. Order processed via `realpage-order-integration`
8. Invoice generated via `realpage-invoices`
9. User returned to RealPage

### Property Management Flow
1. Property manager creates property
2. Adds buildings, units, rooms
3. Adds windows to rooms
4. Records measurements
5. Selects products for windows
6. Creates orders from measurements
7. Tracks progress per property

### Order Processing Flow
1. Order created
2. Work order generated
3. Cutting orders created (if needed)
4. Inventory updated
5. Order fulfilled
6. Invoice generated (for B2B)
7. Payment processed
8. Order completed

### Returns Processing Flow
1. Return request created
2. Return items linked to order items
3. Status tracking: requested → approved → processing → completed
4. Inventory restocking on completion

### Accounting Flow
1. Order shipped → Invoice created automatically
2. Invoice sent to client
3. Payment received → Invoice updated
4. AR aging tracked
5. Overdue invoices flagged
6. Financial reports generated

---

## 🚀 Deployment

### Development
```bash
npm run dev
# Server runs on http://localhost:8080
```

### Production Build
```bash
npm run build
npm run preview
```

### Supabase Functions Deployment
```bash
# Deploy all functions
supabase functions deploy [function-name]

# Example: Deploy RealPage functions
supabase functions deploy punchout-catalog
supabase functions deploy realpage-order-integration
supabase functions deploy realpage-invoices
```

### Environment Variables
- `VITE_SUPABASE_URL` - Supabase project URL
- `VITE_SUPABASE_ANON_KEY` - Supabase anonymous key
- `VITE_STRIPE_PUBLISHABLE_KEY` - Stripe publishable key
- `VITE_ROYAL_WINDOWS_ORDERING_URL` - Royal Windows ordering URL (optional)

### Vercel Deployment
- Connected to GitHub for automatic deployments
- Environment variables configured in Vercel dashboard
- Custom domain setup available

---

## 📊 Statistics

### Codebase Size
- **Total Files**: 1000+ files
- **Frontend Components**: 379 files (313 TSX, 61 TS, 3 SQL)
- **Pages**: 73 pages
- **Edge Functions**: 37 functions
- **Database Migrations**: 177+ migrations
- **Documentation Files**: 100+ markdown files
- **Scripts**: 56 utility scripts
- **Test Files**: 40 test files
- **Load Testing**: 36 load testing files

### Component Breakdown
- **UI Components**: 52 shadcn/ui components
- **Admin Components**: 53+ components
- **Property Components**: 22 components
- **Account Components**: 8 components
- **Product Components**: 20+ components
- **Other Components**: 100+ components

### Page Breakdown
- **Public Pages**: 11 pages
- **Product Pages**: 7 pages
- **Account Pages**: 7 pages
- **Shopping Pages**: 7 pages
- **Property Pages**: 2 pages
- **Admin Pages**: 34 pages
- **Other Pages**: 2 pages

---

## 🔐 Security & Best Practices

### Row Level Security (RLS)
- All tables have RLS policies
- Users can only access their own data
- Admin users have elevated permissions
- Edge Functions use service role key (bypasses RLS)

### Authentication
- Supabase Auth for user authentication
- Admin authentication via `AdminAuthGuard`
- Property authentication via `usePropertyAuth`
- Session management for punch-out integrations

### Data Protection
- Environment variables for sensitive keys
- No hardcoded credentials
- Secure API endpoints
- CORS configuration for Edge Functions

### Code Quality
- TypeScript for type safety
- ESLint for code quality
- Component-driven architecture
- Custom hooks for business logic
- Error handling and validation

---

## 📝 Notes

### Migration Status
⚠️ **Important**: Local migrations may not match production database. Production has more tables than migrations suggest. See `docs/database/MIGRATION_WORKFLOW.md` for safe migration practices.

### Edge Functions
- Edge Functions use service role key (bypasses RLS by default)
- Explicit permissive policies are safer and more reliable
- Filtering is done in application layer, not RLS

### RealPage Integration
- Complete workflow: Punch-out → Order → Invoice
- Multiple Edge Functions work together
- RLS policies must allow Edge Functions to access tables

---

## 🔗 Quick Links

### Key Files
- **Main App**: `src/App.tsx`
- **Routes**: Defined in `src/App.tsx`
- **Supabase Client**: `src/integrations/supabase/client.ts`
- **Cart Context**: `src/contexts/CartContext.tsx`
- **Main Config**: `vite.config.ts`

### Key Directories
- **Components**: `src/components/`
- **Pages**: `src/pages/`
- **Edge Functions**: `supabase/functions/`
- **Migrations**: `supabase/migrations/`
- **Documentation**: `docs/`

### External Resources
- **Supabase Dashboard**: [supabase.com](https://supabase.com)
- **Vercel Dashboard**: [vercel.com](https://vercel.com)
- **Stripe Dashboard**: [stripe.com](https://stripe.com)

---

**Last Updated**: December 1, 2025
**Generated By**: AI Codebase Indexer


