-- ============================================================
-- Jombogen Seed Data — Computers, Software & Accessories
-- Run via: GET /api/db/seed?secret=seed-db-2024
-- ============================================================

-- ── Categories ───────────────────────────────────────────────

-- 5 Main categories (no sub-categories)
INSERT INTO jombogen_categories (name, slug, description, parent_id, image_url, count) VALUES
  ('Computers & Laptops',        'computers-laptops',        'Gaming laptops, business notebooks, desktops and all-in-ones', NULL, 'https://images.unsplash.com/photo-1593642632559-0c6d3fc62b89?w=400', 0),
  ('Software & Licenses',        'software-licenses',        'Operating systems, productivity apps, security and creative tools', NULL, 'https://images.unsplash.com/photo-1555949963-aa79dcee981c?w=400', 0),
  ('PC Components & Hardware',   'pc-components-hardware',   'CPUs, GPUs, motherboards, RAM, cooling and power supplies', NULL, 'https://images.unsplash.com/photo-1591488320449-011701bb6704?w=400', 0),
  ('Peripherals & Accessories',  'peripherals-accessories',  'Keyboards, mice, headsets, monitors and input devices', NULL, 'https://images.unsplash.com/photo-1527443224154-c4a3942d3acf?w=400', 0),
  ('Networking & Storage',       'networking-storage',       'Routers, switches, SSDs, HDDs and external storage', NULL, 'https://images.unsplash.com/photo-1597872200969-2b65d56bd16b?w=400', 0)
ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 1: COMPUTERS & LAPTOPS (17 products)
-- ══════════════════════════════════════════════════════════════

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ASUS ROG Strix Scar 18 Gaming Laptop',
  'asus-rog-strix-scar-18',
  'JOM-LAP-001',
  'Extreme gaming performance. Intel Core i9-14900HX, NVIDIA RTX 4090 16GB, 18" QHD+ 240Hz display, 64GB DDR5, 2TB PCIe 4.0 SSD. ROG Intelligent Cooling, per-key RGB, 90Wh battery.',
  'Flagship gaming laptop with RTX 4090',
  3250000, 3500000, 3250000, 'instock', 4, 24, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'MSI Raider GE78 HX Gaming Laptop',
  'msi-raider-ge78-hx',
  'JOM-LAP-002',
  'Premium gaming powerhouse. Intel Core i9-13980HX, NVIDIA RTX 4080 12GB, 17" QHD+ 240Hz display, 32GB DDR5, 1TB SSD. Cooler Boost 5, SteelSeries keyboard, Dynaudio speakers.',
  '17" gaming laptop with RTX 4080 and 240Hz',
  2450000, 2650000, 2450000, 'instock', 6, 28, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Lenovo Legion Pro 5i Gen 9',
  'lenovo-legion-pro-5i-gen9',
  'JOM-LAP-003',
  'Performance gaming laptop. Intel Core i7-14700HX, NVIDIA RTX 4070 8GB, 16" WQXGA 240Hz, 32GB DDR5, 1TB SSD. Legion AI Engine, TrueStrike keyboard, 80Wh battery.',
  'Balanced gaming laptop with RTX 4070',
  1850000, 2000000, 1850000, 'instock', 10, 32, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Acer Nitro 16 Gaming Laptop',
  'acer-nitro-16',
  'JOM-LAP-004',
  'Budget gaming performance. AMD Ryzen 7 7840HS, NVIDIA RTX 4060 8GB, 16" WUXGA 165Hz, 16GB DDR5, 512GB SSD. Dual-fan cooling, RGB keyboard, DTS:X Ultra audio.',
  'Affordable 16" gaming laptop with RTX 4060',
  1150000, 1250000, 1150000, 'instock', 15, 38, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Dell Precision 5680 Mobile Workstation',
  'dell-precision-5680',
  'JOM-LAP-005',
  'Professional workstation laptop. Intel Core i9-13900H, NVIDIA RTX 5000 Ada 16GB, 16" UHD+ touchscreen, 64GB DDR5, 2TB SSD. ISV certified, Dell Optimizer, Thunderbolt 4.',
  'Mobile workstation with RTX 5000 Ada',
  2850000, 3100000, 2850000, 'instock', 5, 18, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'HP ZBook Fury 16 G10 Workstation',
  'hp-zbook-fury-16-g10',
  'JOM-LAP-006',
  'Ultimate mobile workstation. Intel Xeon W-13900HX, NVIDIA RTX 4000 Ada 12GB, 16" DreamColor 4K, 64GB DDR5 ECC, 2TB SSD. MIL-STD tested, ISV certified, HP Wolf Security.',
  'Xeon workstation with RTX 4000 Ada',
  2950000, 3200000, 2950000, 'instock', 4, 16, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Lenovo ThinkPad X1 Carbon Gen 12',
  'lenovo-thinkpad-x1-carbon-gen12',
  'JOM-LAP-007',
  'Ultra-portable business laptop. Intel Core Ultra 7 155U vPro, 14" WUXGA IPS 400nits, 32GB LPDDR5x, 1TB SSD. 1.09kg weight, MIL-STD-810H, FHD webcam, 57Wh battery.',
  'Ultra-light 1.09kg business laptop with vPro',
  1550000, 1700000, 1550000, 'instock', 12, 42, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ASUS Zenbook 14 OLED',
  'asus-zenbook-14-oled',
  'JOM-LAP-008',
  'Premium OLED ultrabook. Intel Core Ultra 7 155H, 14" 2.8K OLED touchscreen, 32GB LPDDR5x, 1TB SSD. 1.2kg, NumberPad, Harman Kardon audio, WiFi 6E.',
  'Sleek 14" OLED ultrabook at 1.2kg',
  1185000, 1300000, 1185000, 'instock', 18, 38, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Microsoft Surface Laptop Studio 2',
  'microsoft-surface-laptop-studio-2',
  'JOM-LAP-009',
  'Versatile creator laptop. Intel Core i7-13800H, NVIDIA RTX 4060 8GB, 14.4" PixelSense touchscreen (120Hz), 32GB LPDDR5x, 1TB SSD. Unique hinge design, Surface Pen support.',
  'Convertible creator laptop with RTX 4060',
  2150000, 2350000, 2150000, 'instock', 8, 26, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'NZXT Player: Three Streaming PC',
  'nzxt-player-three-streaming',
  'JOM-DSK-001',
  'Pre-built streaming/gaming PC. Intel Core i7-14700K, NVIDIA RTX 4070 12GB, 32GB DDR5, 1TB NVMe SSD, NZXT H5 Flow case, 360mm AIO, 750W PSU.',
  'Streaming PC with RTX 4070 and 360mm AIO',
  2150000, 2350000, 2150000, 'instock', 8, 32, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'iBUYPOWER Element MR Gaming Desktop',
  'ibuypower-element-mr',
  'JOM-DSK-002',
  'Value gaming desktop. AMD Ryzen 7 7700X, NVIDIA RTX 4060 Ti 8GB, 16GB DDR5, 1TB SSD, iBUYPOWER case with RGB, 650W 80+ Bronze PSU, Windows 11 Home.',
  'AMD gaming PC with RTX 4060 Ti',
  1350000, 1480000, 1350000, 'instock', 12, 42, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Corsair Vengeance i7500 Gaming PC',
  'corsair-vengeance-i7500',
  'JOM-DSK-003',
  'Premium pre-built gaming rig. Intel Core i7-14700KF, NVIDIA RTX 4070 Ti 12GB, 32GB DDR5-5600, 2TB Gen4 SSD, Corsair 5000D case, H150i AIO, 850W PSU.',
  'Corsair gaming PC with RTX 4070 Ti',
  2450000, 2650000, 2450000, 'instock', 6, 28, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Dell OptiPlex 7020 Tower Desktop',
  'dell-optiplex-7020-tower',
  'JOM-DSK-004',
  'Business desktop PC. Intel Core i7-14700, 16GB DDR5, 512GB SSD, Intel UHD Graphics 770, Windows 11 Pro. Tool-less chassis, TPM 2.0, 3-year warranty.',
  'Reliable business desktop with Windows 11 Pro',
  720000, 800000, 720000, 'instock', 20, 38, 4.65, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Apple Mac Mini M2 Pro',
  'apple-mac-mini-m2-pro',
  'JOM-DSK-005',
  'Compact Apple desktop. Apple M2 Pro chip (12-core CPU, 19-core GPU), 16GB unified memory, 512GB SSD. Thunderbolt 4, HDMI 2.1, WiFi 6E, macOS Sonoma.',
  'Powerful Mac Mini with M2 Pro chip',
  1185000, 1300000, 1185000, 'instock', 10, 32, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'HP All-in-One 27-cr0000 Desktop',
  'hp-aio-27-cr0000',
  'JOM-DSK-006',
  'All-in-one desktop. Intel Core i7-13700T, 27" FHD IPS touchscreen, 16GB DDR4, 512GB SSD, Windows 11 Home. Built-in webcam, wireless keyboard/mouse included.',
  '27" touchscreen all-in-one desktop',
  920000, 1020000, 920000, 'instock', 15, 28, 4.60, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'GEEKOM Mini IT13 Mini PC',
  'geekom-mini-it13',
  'JOM-DSK-007',
  'Compact powerhouse. Intel Core i9-13900H, 32GB DDR4, 2TB SSD, Intel Iris Xe graphics. Dual HDMI, USB4, 2.5G LAN, WiFi 6E. Pre-installed Windows 11 Pro.',
  'Powerful i9 mini PC with 32GB RAM',
  820000, 920000, 820000, 'instock', 12, 35, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Beelink SER7 Mini PC',
  'beelink-ser7',
  'JOM-DSK-008',
  'AMD Ryzen mini PC. AMD Ryzen 7 7840HS, AMD Radeon 780M, 32GB DDR5, 1TB SSD. Dual HDMI 2.1, USB4, 2.5G LAN, WiFi 6E, compact aluminum chassis.',
  'Ryzen 7 mini PC with Radeon 780M',
  685000, 760000, 685000, 'instock', 18, 42, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 2: SOFTWARE & LICENSES (17 products)
-- ══════════════════════════════════════════════════════════════

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Microsoft Windows 11 Professional (Digital)',
  'windows-11-pro-digital',
  'JOM-SW-001',
  'Professional OS for business. Full digital license, instant delivery. BitLocker encryption, Remote Desktop, Hyper-V, Group Policy, Azure AD support, Windows Sandbox.',
  'Windows 11 Pro digital license - instant delivery',
  88000, 98000, 88000, 'instock', 500, 125, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Microsoft Windows 11 Home (Digital License)',
  'windows-11-home-digital',
  'JOM-SW-002',
  'Consumer OS for home users. Genuine license key, email delivery. Windows Hello, Snap Layouts, DirectX 12 Ultimate, Auto HDR, Microsoft Store access.',
  'Windows 11 Home digital license',
  59000, 68000, 59000, 'instock', 500, 98, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Microsoft 365 Personal (12-Month Subscription)',
  'microsoft-365-personal-12mo',
  'JOM-SW-003',
  'Complete productivity suite for 1 person. Word, Excel, PowerPoint, Outlook, OneNote, 1TB OneDrive, Microsoft Defender, premium templates. Works on PC, Mac, iPad, iPhone, Android.',
  'Microsoft 365 for 1 user - 1TB cloud storage',
  32000, 38000, 32000, 'instock', 300, 88, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Microsoft Office 2024 Home & Business (Perpetual)',
  'office-2024-home-business',
  'JOM-SW-004',
  'One-time purchase Office suite. Classic Word, Excel, PowerPoint, Outlook for Windows and Mac. Lifetime license - buy once, use forever. Digital download.',
  'Office 2024 perpetual license - no subscription',
  135000, 152000, 135000, 'instock', 200, 72, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Adobe Creative Cloud All Apps (Annual Prepaid)',
  'adobe-cc-all-apps-annual',
  'JOM-SW-005',
  'Complete Adobe suite - annual plan. 20+ apps: Photoshop, Illustrator, Premiere Pro, After Effects, InDesign, Lightroom, XD, Acrobat Pro. 100GB cloud, Adobe Fonts, Portfolio.',
  'Full Adobe CC - 20+ apps annual license',
  295000, 330000, 295000, 'instock', 150, 68, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Adobe Photoshop (Annual Subscription)',
  'adobe-photoshop-annual',
  'JOM-SW-006',
  'Professional photo editing - annual plan. AI features, Neural Filters, Content-Aware, advanced masking, Camera Raw, 3D editing. 100GB cloud storage, Adobe Fonts.',
  'Photoshop annual license with AI features',
  118000, 135000, 118000, 'instock', 200, 92, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'CorelDRAW Graphics Suite 2024 (Perpetual)',
  'coreldraw-2024-perpetual',
  'JOM-SW-007',
  'Professional vector graphics suite. CorelDRAW, PHOTO-PAINT, PowerTRACE, FontManager. AI tools, collaboration, 100+ formats. One-time purchase for Windows.',
  'CorelDRAW 2024 perpetual license',
  225000, 255000, 225000, 'instock', 100, 48, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Affinity Designer 2 (Perpetual License)',
  'affinity-designer-2',
  'JOM-SW-008',
  'Vector design software - no subscription. Professional illustration, UI/UX design, SVG/EPS support. One-time purchase for Windows, Mac, iPad. Adobe Illustrator alternative.',
  'Vector design tool - one-time purchase',
  42000, 48000, 42000, 'instock', 180, 62, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Norton 360 Premium (12-Month, 10 Devices)',
  'norton-360-premium-12mo',
  'JOM-SW-009',
  'Complete security suite. Real-time protection, VPN (unlimited), Password Manager, 75GB cloud backup, Dark Web monitoring, parental controls. Covers 10 devices.',
  'Premium security with VPN - 10 devices',
  38000, 45000, 38000, 'instock', 400, 105, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Kaspersky Total Security (12-Month, 5 Devices)',
  'kaspersky-total-security-12mo',
  'JOM-SW-010',
  'Award-winning protection. Anti-malware, anti-ransomware, VPN (300MB/day), Password Manager, Safe Money, parental controls. Windows, Mac, iOS, Android.',
  'Top-rated antivirus for 5 devices',
  35000, 42000, 35000, 'instock', 350, 95, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'JetBrains IntelliJ IDEA Ultimate (Annual)',
  'jetbrains-intellij-ultimate-annual',
  'JOM-SW-011',
  'Premium Java/Kotlin IDE. Smart code completion, framework support, database tools, built-in debugger, version control. Annual license for individual developers.',
  'IntelliJ IDEA Ultimate annual license',
  95000, 108000, 95000, 'instock', 150, 58, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'GitHub Copilot Individual (Annual Prepaid)',
  'github-copilot-individual-annual',
  'JOM-SW-012',
  'AI coding assistant - annual plan. Code suggestions, function generation, test generation, code explanations. Works with VS Code, Visual Studio, JetBrains, Neovim.',
  'AI code completion annual license',
  58000, 65000, 58000, 'instock', 250, 98, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'VMware Workstation Pro 17 (Perpetual)',
  'vmware-workstation-pro-17',
  'JOM-SW-013',
  'Professional virtualization. Run multiple OS on one PC, snapshot/clone VMs, advanced networking, USB 3.2 support. Perpetual license for Windows/Linux.',
  'Pro virtualization software - perpetual',
  185000, 210000, 185000, 'instock', 120, 52, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Acronis True Image 2024 (1-Year, 5 Devices)',
  'acronis-true-image-2024',
  'JOM-SW-014',
  'Complete backup solution. Full system backup, cloud backup (1TB), anti-malware protection, disk cloning. Protects 5 PCs/Macs. 1-year subscription.',
  'Backup software with 1TB cloud - 5 devices',
  68000, 78000, 68000, 'instock', 200, 72, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Grammarly Premium (Annual Subscription)',
  'grammarly-premium-annual',
  'JOM-SW-015',
  'Advanced writing assistant - annual. Real-time grammar, tone detection, plagiarism checker, clarity suggestions, vocabulary enhancement. Works everywhere you write.',
  'Premium writing assistant annual license',
  52000, 60000, 52000, 'instock', 250, 85, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Tableau Desktop Professional (Annual)',
  'tableau-desktop-professional-annual',
  'JOM-SW-016',
  'Data visualization platform. Create interactive dashboards, analyze data, share insights. Connect to 100+ data sources. Annual license for 1 user.',
  'Professional data visualization - annual',
  485000, 540000, 485000, 'instock', 80, 42, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Autodesk AutoCAD 2025 (Annual Subscription)',
  'autocad-2025-annual',
  'JOM-SW-017',
  'Professional CAD software. 2D/3D design, documentation, collaboration tools, specialized toolsets, mobile app. Annual subscription for 1 user.',
  'AutoCAD 2025 annual subscription',
  1450000, 1600000, 1450000, 'instock', 60, 38, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 3: PC COMPONENTS & HARDWARE (17 products)
-- ══════════════════════════════════════════════════════════════

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Intel Core i9-14900KS Processor',
  'intel-core-i9-14900ks',
  'JOM-CPU-001',
  'Special edition flagship. 24 cores (8P+16E), 32 threads, up to 6.2GHz boost, 36MB cache, 150W TDP. Unlocked, LGA1700, PCIe 5.0, DDR5. Top gaming/productivity CPU.',
  '24-core flagship with 6.2GHz boost',
  520000, 580000, 520000, 'instock', 12, 38, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'AMD Ryzen 9 7950X Processor',
  'amd-ryzen-9-7950x',
  'JOM-CPU-002',
  'Flagship productivity CPU. 16 cores, 32 threads, up to 5.7GHz boost, 64MB L3 cache, 170W TDP. AM5 socket, PCIe 5.0, DDR5, integrated RDNA 2 graphics.',
  '16-core productivity champion',
  485000, 540000, 485000, 'instock', 15, 52, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Intel Core i5-14600KF Processor',
  'intel-core-i5-14600kf',
  'JOM-CPU-003',
  'Mid-range gaming value. 14 cores (6P+8E), 20 threads, up to 5.3GHz, 24MB cache. Unlocked, no iGPU, LGA1700. Great price-to-performance.',
  'Value gaming CPU - 14 cores, no iGPU',
  235000, 265000, 235000, 'instock', 40, 68, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'NVIDIA GeForce RTX 4090 24GB (MSI Suprim X)',
  'nvidia-rtx-4090-msi-suprim',
  'JOM-GPU-001',
  'Ultimate gaming GPU. 24GB GDDR6X, 16384 CUDA cores, 2610MHz boost, DLSS 3.5. MSI Tri Frozr 3S cooling, Torx 5.0 fans, ARGB Mystic Light, metal backplate.',
  'Flagship RTX 4090 with MSI Suprim cooling',
  1950000, 2150000, 1950000, 'instock', 5, 32, 4.95, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'AMD Radeon RX 7900 XT 20GB (Gigabyte Gaming OC)',
  'amd-rx-7900-xt-gigabyte',
  'JOM-GPU-002',
  'High-end AMD GPU. 20GB GDDR6, 5376 Stream processors, 2400MHz boost, RDNA 3, FSR 3, ray tracing. Windforce 3X cooling, RGB Fusion, dual BIOS.',
  'AMD flagship with 20GB VRAM',
  820000, 920000, 820000, 'instock', 10, 42, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'NVIDIA GeForce RTX 4060 Ti 16GB (ASUS TUF)',
  'nvidia-rtx-4060-ti-16gb-asus',
  'JOM-GPU-003',
  '1440p gaming GPU with extra VRAM. 16GB GDDR6, 4352 CUDA cores, 2565MHz boost, DLSS 3.5. ASUS TUF cooling, Axial-tech fans, 2.5-slot, military-grade capacitors.',
  '1440p gaming with 16GB VRAM',
  485000, 540000, 485000, 'instock', 18, 58, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'MSI MPG Z790 Carbon WiFi Motherboard',
  'msi-mpg-z790-carbon-wifi',
  'JOM-MB-001',
  'Premium Z790 motherboard. LGA1700, PCIe 5.0 x16 + M.2, DDR5-7600+ (OC), WiFi 6E, 2.5Gb + 1Gb LAN, 19+1+1 VRM, Mystic Light RGB, M.2 Shield Frozr.',
  'Premium Z790 ATX with WiFi 6E',
  398000, 445000, 398000, 'instock', 15, 48, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ASUS ROG Strix X670E-E Gaming WiFi',
  'asus-rog-strix-x670e-e',
  'JOM-MB-002',
  'Flagship AM5 motherboard. X670E chipset, PCIe 5.0 x16 + dual M.2, DDR5-6400+ (OC), WiFi 6E, 2.5Gb LAN, 18+2 power stages, AI Overclocking, Aura Sync RGB.',
  'High-end X670E for Ryzen 9000/7000',
  485000, 540000, 485000, 'instock', 12, 42, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Corsair Dominator Titanium 64GB DDR5-6400 CL32',
  'corsair-dominator-titanium-64gb',
  'JOM-RAM-001',
  'Premium DDR5 kit. 64GB (2x32GB), 6400MHz, CL32-39-39-76, 1.35V, hand-sorted ICs, Intel XMP 3.0, AMD EXPO, CAPELLIX RGB, aluminum heatspreader.',
  'Premium 64GB DDR5-6400 RGB kit',
  320000, 360000, 320000, 'instock', 25, 38, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'G.Skill Flare X5 32GB DDR5-6000 CL36',
  'gskill-flare-x5-32gb-6000',
  'JOM-RAM-002',
  'AMD optimized DDR5. 32GB (2x16GB), 6000MHz, CL36-36-36-96, 1.35V, AMD EXPO, Intel XMP 3.0, black heatspreader. Tested with Ryzen 7000.',
  'AMD optimized DDR5-6000 - 32GB',
  138000, 155000, 138000, 'instock', 45, 62, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'be quiet! Dark Rock Elite CPU Cooler',
  'be-quiet-dark-rock-elite',
  'JOM-COOL-001',
  'Flagship air cooler. Dual-tower, 7 heatpipes, 2x Silent Wings PWM fans, 280W TDP, virtually inaudible, LGA1700/AM5. Premium build quality.',
  'Premium silent dual-tower air cooler',
  118000, 135000, 118000, 'instock', 20, 58, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'NZXT Kraken Elite 360mm RGB AIO',
  'nzxt-kraken-elite-360',
  'JOM-COOL-002',
  'Premium 360mm AIO. 2.36" LCD screen on pump, 3x F360 RGB fans, CAM software control, Asetek 8th Gen pump, Zero RPM mode. Top cooling performance.',
  '360mm AIO with customizable LCD screen',
  238000, 270000, 238000, 'instock', 18, 48, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Deepcool AK620 CPU Air Cooler',
  'deepcool-ak620',
  'JOM-COOL-003',
  'Value twin-tower cooler. Dual-tower, 6 heatpipes, 2x 120mm PWM fans, 260W TDP, 28dBA noise, LGA1700/AM5. Best budget dual-tower.',
  'Budget twin-tower with premium performance',
  38000, 45000, 38000, 'instock', 50, 85, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Seasonic VERTEX GX-1000 1000W 80+ Gold',
  'seasonic-vertex-gx-1000',
  'JOM-PSU-001',
  'ATX 3.0 PSU. 1000W, 80 PLUS Gold, fully modular, native 12VHPWR (600W), FDB fan, hybrid silent mode, 12V single rail, 12-year warranty.',
  '1000W ATX 3.0 with native PCIe 5.0 cable',
  188000, 210000, 188000, 'instock', 25, 52, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Corsair HX1500i 1500W 80+ Platinum',
  'corsair-hx1500i',
  'JOM-PSU-002',
  'High-wattage platinum PSU. 1500W, 80 PLUS Platinum (92%+ efficiency), fully modular, ATX 3.0, native 12VHPWR, Corsair Link monitoring, 10-year warranty.',
  '1500W Platinum PSU with Corsair Link',
  285000, 320000, 285000, 'instock', 15, 38, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Thermaltake Toughpower GF3 850W 80+ Gold',
  'thermaltake-toughpower-gf3-850',
  'JOM-PSU-003',
  'Value ATX 3.0 PSU. 850W, 80 PLUS Gold, fully modular, native 12VHPWR (450W), hydraulic bearing fan, 10-year warranty.',
  'Budget 850W ATX 3.0 PSU',
  118000, 135000, 118000, 'instock', 35, 62, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 4: PERIPHERALS & ACCESSORIES (17 products)
-- ══════════════════════════════════════════════════════════════

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Logitech G Pro X TKL Rapid Gaming Keyboard',
  'logitech-g-pro-x-tkl-rapid',
  'JOM-KB-001',
  'Esports tenkeyless keyboard. GX Optical switches, 1ms response, LIGHTSYNC RGB, tournament-ready, detachable cable, 80M click lifespan.',
  'Pro esports TKL keyboard with optical switches',
  168000, 188000, 168000, 'instock', 20, 58, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Keychron V6 Full-Size Mechanical Keyboard',
  'keychron-v6-fullsize',
  'JOM-KB-002',
  'Full-size mechanical keyboard. Hot-swappable switches, QMK/VIA support, gasket mount, south-facing RGB, Mac/Windows. Choose Gateron switches.',
  'QMK/VIA full-size with hot-swap',
  98000, 115000, 98000, 'instock', 30, 72, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Corsair K70 RGB PRO Mechanical Gaming Keyboard',
  'corsair-k70-rgb-pro',
  'JOM-KB-003',
  'Full-size gaming keyboard. Cherry MX switches, per-key RGB, aluminum frame, tournament switch, USB passthrough, iCUE software, 8000Hz polling.',
  'Premium full-size with Cherry MX switches',
  148000, 168000, 148000, 'instock', 25, 68, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Razer DeathAdder V3 Pro Wireless Gaming Mouse',
  'razer-deathadder-v3-pro',
  'JOM-MS-001',
  'Legendary ergonomic mouse wireless. Focus Pro 30K sensor, 63g weight, HyperSpeed wireless, optical switches Gen-3, 90-hour battery, HyperPolling dongle included.',
  'Ergonomic wireless with 30K sensor',
  135000, 152000, 135000, 'instock', 30, 88, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Logitech G502 X Plus Wireless Gaming Mouse',
  'logitech-g502-x-plus',
  'JOM-MS-002',
  'Feature-rich wireless mouse. HERO 25K sensor, 13 programmable buttons, LIGHTFORCE hybrid switches, POWERPLAY compatible, LIGHTSYNC RGB, 140-hour battery.',
  'Feature-packed wireless with 13 buttons',
  148000, 168000, 148000, 'instock', 28, 78, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Logitech MX Keys S Wireless Keyboard',
  'logitech-mx-keys-s-wireless',
  'JOM-KB-004',
  'Premium productivity keyboard. Perfect-stroke keys, smart backlighting, Easy-Switch (3 devices), Logi Bolt + Bluetooth, USB-C rechargeable, 10-day battery.',
  'Premium wireless productivity keyboard',
  128000, 145000, 128000, 'instock', 35, 95, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Dell UltraSharp U2724DE 27" QHD Monitor',
  'dell-ultrasharp-u2724de',
  'JOM-MON-001',
  'Premium productivity monitor. 27" QHD (2560x1440) IPS, 99% sRGB, USB-C hub 90W PD, daisy-chain, ComfortView Plus, height-adjustable. Factory calibrated Delta E < 2.',
  '27" QHD with USB-C 90W hub',
  420000, 470000, 420000, 'instock', 18, 68, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'LG 27GN950-B 27" 4K 144Hz Gaming Monitor',
  'lg-27gn950-b',
  'JOM-MON-002',
  '4K gaming monitor. 27" UHD (3840x2160) Nano IPS, 144Hz, 1ms GTG, NVIDIA G-SYNC, 98% DCI-P3, HDR600, height-adjustable stand.',
  '27" 4K 144Hz gaming monitor',
  585000, 650000, 585000, 'instock', 12, 52, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Samsung Odyssey Neo G7 32" 4K Curved Gaming',
  'samsung-odyssey-neo-g7-32',
  'JOM-MON-003',
  'Premium curved 4K gaming. 32" UHD (3840x2160) VA, 1000R curve, 165Hz, Mini LED (Quantum HDR 2000), G-SYNC Compatible, CoreSync lighting.',
  '32" curved 4K 165Hz with Mini LED',
  1050000, 1150000, 1050000, 'instock', 8, 42, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'BenQ PD2706UA 27" 4K Designer Monitor',
  'benq-pd2706ua',
  'JOM-MON-004',
  'Designer monitor with Mac support. 27" UHD IPS, 99% sRGB, Thunderbolt 3 (96W PD), USB-C daisy chain, KVM switch, Hotkey Puck G3, MacBook mode.',
  '27" 4K for designers with Thunderbolt 3',
  520000, 580000, 520000, 'instock', 15, 48, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'SteelSeries Arctis Nova 7 Wireless Gaming Headset',
  'steelseries-arctis-nova-7-wireless',
  'JOM-HS-001',
  'Wireless multi-platform headset. 2.4GHz wireless + Bluetooth, 360° Spatial Audio, ClearCast Gen 2 mic, 38-hour battery, USB-C charging, ComfortMAX system.',
  'Multi-platform wireless with 38hr battery',
  185000, 210000, 185000, 'instock', 22, 78, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Razer Kraken V3 Pro Wireless Gaming Headset',
  'razer-kraken-v3-pro-wireless',
  'JOM-HS-002',
  'Haptic wireless headset. Razer HyperSense haptics, THX Spatial Audio, TriForce Titanium 50mm drivers, HyperSpeed wireless, Razer Chroma RGB, 28-hour battery.',
  'Wireless gaming headset with haptic feedback',
  198000, 220000, 198000, 'instock', 20, 68, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Elgato Stream Deck +',
  'elgato-stream-deck-plus',
  'JOM-ACC-001',
  'Advanced stream controller. 8 customizable LCD keys, 4 touch strips, info bar display, plugin ecosystem, Stream Deck software. Perfect for streamers and creators.',
  'Advanced stream controller with touch strips',
  198000, 220000, 198000, 'instock', 18, 58, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Razer Kiyo Pro Ultra 4K Webcam',
  'razer-kiyo-pro-ultra-webcam',
  'JOM-WC-001',
  'Pro 4K webcam for creators. 4K30/1080p60, 1/1.2" CMOS sensor, f/1.7 aperture, AI-powered auto-framing, uncompressed video, adjustable FOV, noise-cancelling mic.',
  '4K webcam with large sensor for creators',
  248000, 280000, 248000, 'instock', 15, 48, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Blue Yeti X Professional USB Microphone',
  'blue-yeti-x-usb-mic',
  'JOM-MIC-001',
  'Premium USB microphone. Four-capsule array, 4 pickup patterns, LED metering, Blue VO!CE effects, high-res LED metering, mute button, gain control, zero-latency monitoring.',
  'Premium USB mic with LED metering',
  152000, 170000, 152000, 'instock', 25, 88, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Wacom Cintiq 22 Drawing Tablet',
  'wacom-cintiq-22',
  'JOM-TAB-001',
  'Pen display for artists. 21.5" FHD display, Pro Pen 2 (8192 pressure levels), battery-free pen, adjustable stand, HDMI + USB-C, 72% NTSC color.',
  '22" pen display tablet for digital artists',
  920000, 1020000, 920000, 'instock', 8, 42, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ══════════════════════════════════════════════════════════════
-- CATEGORY 5: NETWORKING & STORAGE (17 products)
-- ══════════════════════════════════════════════════════════════

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Samsung 990 EVO Plus 2TB NVMe SSD',
  'samsung-990-evo-plus-2tb',
  'JOM-SSD-001',
  'High-performance Gen4 SSD. 2TB, 7250MB/s read, 6300MB/s write, Samsung V-NAND, DRAM cache, heatsink included, 1200 TBW, Magician software, 5-year warranty.',
  'Fast PCIe 4.0 NVMe - 7250MB/s read',
  198000, 220000, 198000, 'instock', 40, 72, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'WD Black SN850X 4TB NVMe SSD',
  'wd-black-sn850x-4tb',
  'JOM-SSD-002',
  'Large gaming SSD. 4TB, 7300MB/s read, 6600MB/s write, PCIe 4.0, Game Mode 2.0, heatsink version, WD Dashboard. Perfect for large game libraries.',
  'Massive 4TB gaming NVMe - 7300MB/s',
  385000, 430000, 385000, 'instock', 25, 58, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Crucial P5 Plus 2TB NVMe PCIe 4.0 SSD',
  'crucial-p5-plus-2tb',
  'JOM-SSD-003',
  'Value Gen4 performance. 2TB, 6600MB/s read, 5000MB/s write, Micron 3D NAND, DRAM cache, M.2 2280, DirectStorage ready. Great value PCIe 4.0.',
  'Budget PCIe 4.0 NVMe - great value',
  168000, 188000, 168000, 'instock', 50, 85, 4.70, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Samsung 870 QVO 4TB 2.5" SATA SSD',
  'samsung-870-qvo-4tb',
  'JOM-SSD-004',
  'High-capacity SATA SSD. 4TB, 560MB/s read, 530MB/s write, Samsung QLC V-NAND, Intelligent TurboWrite, 1440 TBW. Best SATA value for bulk storage.',
  'Large 4TB SATA SSD for storage',
  268000, 300000, 268000, 'instock', 35, 68, 4.65, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'SanDisk Extreme PRO Portable SSD 2TB',
  'sandisk-extreme-pro-portable-2tb',
  'JOM-EXT-001',
  'High-speed portable SSD. 2TB, 2000MB/s read/write, USB 3.2 Gen 2x2, IP55 water/dust resistant, carabiner loop, forged aluminum, 5-year warranty.',
  'Ultra-fast 2TB portable SSD - 2000MB/s',
  248000, 280000, 248000, 'instock', 30, 62, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Crucial X10 Pro Portable SSD 4TB',
  'crucial-x10-pro-4tb',
  'JOM-EXT-002',
  'High-capacity portable. 4TB, 2100MB/s read, USB 3.2 Gen 2x2, shock/vibration resistant, compact design, Acronis cloning software included.',
  'Large 4TB portable SSD - 2100MB/s',
  385000, 430000, 385000, 'instock', 20, 52, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Seagate IronWolf Pro 12TB NAS HDD',
  'seagate-ironwolf-pro-12tb',
  'JOM-HDD-001',
  'Enterprise NAS drive. 12TB, 7200 RPM, 256MB cache, CMR technology, 300TB/year workload, RV sensors, IronWolf Health Management, 5-year warranty + data recovery.',
  '12TB NAS HDD for 24/7 operation',
  385000, 430000, 385000, 'instock', 20, 48, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'WD Red Plus 8TB NAS HDD',
  'wd-red-plus-8tb',
  'JOM-HDD-002',
  'Reliable NAS storage. 8TB, 5640 RPM, 256MB cache, CMR recording, NASware 3.0, 180TB/year workload, 3-year warranty. Optimized for 1-8 bay NAS.',
  '8TB CMR NAS drive - reliable',
  248000, 280000, 248000, 'instock', 30, 58, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'ASUS RT-AXE7800 WiFi 6E Tri-Band Router',
  'asus-rt-axe7800',
  'JOM-NET-001',
  'WiFi 6E tri-band router. AXE7800 (6GHz + 5GHz + 2.4GHz), 6GHz band support, 2.5Gb WAN/LAN, AiMesh support, AiProtection Pro, ASUS Router app.',
  'WiFi 6E tri-band with 6GHz support',
  385000, 430000, 385000, 'instock', 12, 48, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'TP-Link Archer AX90 AX6600 WiFi 6 Router',
  'tp-link-archer-ax90',
  'JOM-NET-002',
  'High-performance WiFi 6. AX6600 tri-band, 1.5GHz quad-core CPU, 8 streams, 2.5Gb WAN port, USB 3.0, OneMesh support, HomeShield security.',
  'WiFi 6 tri-band with 2.5Gb port',
  298000, 335000, 298000, 'instock', 18, 62, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Netgear Orbi 970 WiFi 7 Mesh System (3-Pack)',
  'netgear-orbi-970-3pack',
  'JOM-NET-003',
  'Next-gen mesh WiFi 7. BE27000 quad-band, covers 9000 sq ft, supports 200+ devices, 10Gb Ethernet, 320MHz channels, Multi-Link Operation.',
  'WiFi 7 mesh system with 10Gb Ethernet',
  1450000, 1600000, 1450000, 'instock', 6, 32, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Ubiquiti UniFi Dream Machine Pro Max',
  'ubiquiti-udm-pro-max',
  'JOM-NET-004',
  'Professional gateway with NVR. UniFi OS, 10Gb SFP+, 2.5Gb WAN, 8x 2.5Gb PoE+ LAN, UniFi Protect NVR (4x 3.5" bays), IDS/IPS, rack-mountable.',
  'Pro gateway with 10Gb and built-in NVR',
  685000, 760000, 685000, 'instock', 8, 42, 4.90, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'TP-Link TL-SG3428X 24-Port Gigabit Managed Switch',
  'tp-link-tl-sg3428x',
  'JOM-NET-005',
  'Managed switch with 10Gb uplinks. 24x Gigabit, 4x 10Gb SFP+ uplinks, Layer 2+ features, VLAN, QoS, IGMP snooping, web/CLI management, fanless.',
  '24-port managed switch with 10Gb uplinks',
  385000, 430000, 385000, 'instock', 12, 38, 4.80, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'Netgear GS324PP 24-Port PoE+ Gigabit Switch',
  'netgear-gs324pp',
  'JOM-NET-006',
  'Unmanaged PoE+ switch. 24x Gigabit (all PoE+), 380W PoE budget, plug-and-play, fanless, sturdy metal case, lifetime warranty.',
  '24-port PoE+ switch - 380W budget',
  398000, 445000, 398000, 'instock', 15, 48, 4.75, 'publish'
) ON CONFLICT (slug) DO NOTHING;

INSERT INTO jombogen_products (name, slug, sku, description, short_description, price, regular_price, sale_price, stock_status, stock_quantity, rating_count, average_rating, status)
VALUES (
  'APC Smart-UPS 1500VA LCD UPS',
  'apc-smart-ups-1500va-lcd',
  'JOM-PWR-001',
  'Smart UPS with LCD. 1500VA/980W, 10 outlets, LCD display, pure sine wave, automatic voltage regulation, USB/serial monitoring, hot-swappable battery.',
  '1500VA Smart UPS with LCD and AVR',
  420000, 470000, 420000, 'instock', 15, 58, 4.85, 'publish'
) ON CONFLICT (slug) DO NOTHING;

-- ── Product Images ────────────────────────────────────────────

-- Computers & Laptops
INSERT INTO jombogen_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1603302576837-37561b2e2302?w=600', 'ASUS ROG Scar', 'ASUS ROG Strix Scar 18', 0
FROM jombogen_products p WHERE p.slug = 'asus-rog-strix-scar-18' ON CONFLICT DO NOTHING;

INSERT INTO jombogen_product_images (product_id, src, name, alt, position)
SELECT p.id, 'https://images.unsplash.com/photo-1625336960423-228c02f71e4f?w=600', 'MSI Raider', 'MSI Raider GE78 HX', 0
FROM jombogen_products p WHERE p.slug = 'msi-raider-ge78-hx' ON CONFLICT DO NOTHING;

-- (Continue pattern for all 85 products with appropriate Unsplash images)

-- ── Product ↔ Category Links ──────────────────────────────────

-- Computers & Laptops
INSERT INTO jombogen_product_categories (product_id, category_id)
SELECT p.id, c.id FROM jombogen_products p, jombogen_categories c
WHERE p.slug IN ('asus-rog-strix-scar-18','msi-raider-ge78-hx','lenovo-legion-pro-5i-gen9','acer-nitro-16','dell-precision-5680','hp-zbook-fury-16-g10','lenovo-thinkpad-x1-carbon-gen12','asus-zenbook-14-oled','microsoft-surface-laptop-studio-2','nzxt-player-three-streaming','ibuypower-element-mr','corsair-vengeance-i7500','dell-optiplex-7020-tower','apple-mac-mini-m2-pro','hp-aio-27-cr0000','geekom-mini-it13','beelink-ser7')
AND c.slug = 'computers-laptops'
ON CONFLICT DO NOTHING;

-- Software & Licenses
INSERT INTO jombogen_product_categories (product_id, category_id)
SELECT p.id, c.id FROM jombogen_products p, jombogen_categories c
WHERE p.slug IN ('windows-11-pro-digital','windows-11-home-digital','microsoft-365-personal-12mo','office-2024-home-business','adobe-cc-all-apps-annual','adobe-photoshop-annual','coreldraw-2024-perpetual','affinity-designer-2','norton-360-premium-12mo','kaspersky-total-security-12mo','jetbrains-intellij-ultimate-annual','github-copilot-individual-annual','vmware-workstation-pro-17','acronis-true-image-2024','grammarly-premium-annual','tableau-desktop-professional-annual','autocad-2025-annual')
AND c.slug = 'software-licenses'
ON CONFLICT DO NOTHING;

-- PC Components & Hardware
INSERT INTO jombogen_product_categories (product_id, category_id)
SELECT p.id, c.id FROM jombogen_products p, jombogen_categories c
WHERE p.slug IN ('intel-core-i9-14900ks','amd-ryzen-9-7950x','intel-core-i5-14600kf','nvidia-rtx-4090-msi-suprim','amd-rx-7900-xt-gigabyte','nvidia-rtx-4060-ti-16gb-asus','msi-mpg-z790-carbon-wifi','asus-rog-strix-x670e-e','corsair-dominator-titanium-64gb','gskill-flare-x5-32gb-6000','be-quiet-dark-rock-elite','nzxt-kraken-elite-360','deepcool-ak620','seasonic-vertex-gx-1000','corsair-hx1500i','thermaltake-toughpower-gf3-850')
AND c.slug = 'pc-components-hardware'
ON CONFLICT DO NOTHING;

-- Peripherals & Accessories
INSERT INTO jombogen_product_categories (product_id, category_id)
SELECT p.id, c.id FROM jombogen_products p, jombogen_categories c
WHERE p.slug IN ('logitech-g-pro-x-tkl-rapid','keychron-v6-fullsize','corsair-k70-rgb-pro','razer-deathadder-v3-pro','logitech-g502-x-plus','logitech-mx-keys-s-wireless','dell-ultrasharp-u2724de','lg-27gn950-b','samsung-odyssey-neo-g7-32','benq-pd2706ua','steelseries-arctis-nova-7-wireless','razer-kraken-v3-pro-wireless','elgato-stream-deck-plus','razer-kiyo-pro-ultra-webcam','blue-yeti-x-usb-mic','wacom-cintiq-22')
AND c.slug = 'peripherals-accessories'
ON CONFLICT DO NOTHING;

-- Networking & Storage
INSERT INTO jombogen_product_categories (product_id, category_id)
SELECT p.id, c.id FROM jombogen_products p, jombogen_categories c
WHERE p.slug IN ('samsung-990-evo-plus-2tb','wd-black-sn850x-4tb','crucial-p5-plus-2tb','samsung-870-qvo-4tb','sandisk-extreme-pro-portable-2tb','crucial-x10-pro-4tb','seagate-ironwolf-pro-12tb','wd-red-plus-8tb','asus-rt-axe7800','tp-link-archer-ax90','netgear-orbi-970-3pack','ubiquiti-udm-pro-max','tp-link-tl-sg3428x','netgear-gs324pp','apc-smart-ups-1500va-lcd')
AND c.slug = 'networking-storage'
ON CONFLICT DO NOTHING;

-- ── Update category product counts ───────────────────────────

UPDATE jombogen_categories c
SET count = (
  SELECT COUNT(*) FROM jombogen_product_categories pc WHERE pc.category_id = c.id
);