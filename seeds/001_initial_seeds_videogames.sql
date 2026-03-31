-- Seed CollectionSet table
INSERT INTO CollectionSet (collectionSetName, releaseDate)
VALUES
('Nintendo & Sony Prototype Collection', '1992-01-01'),
('Nokia Handheld Collection', '2003-10-07'),
('PlayStation 2 Color Variants', '2002-03-01'),
('Xbox Halo Limited Editions', '2001-11-15');

-- Seed VideogameSpecialEdition table
INSERT INTO VideogameSpecialEdition (
    productName, manufacturer, category, edition, baseColor, physicalAttributes,
    controllers, salesTagStatus, specialFeatures, colorVariations, designBranding,
    includedItems, collectionSetId
)
VALUES
-- Nintendo PlayStation Prototype
('Nintendo PlayStation Prototype', 'Nintendo & Sony', 'Console', 'Prototype Edition', 'Gray',
 'SNES-style chassis with CD-ROM drive', 'Sony PlayStation-branded SNES controller', 'Prototype',
 'Historic collaboration between Nintendo and Sony', 'Gray', 'Nintendo & Sony Branding',
 'Prototype console, controller', 1),

-- Nokia N-Gage
('Nokia N-Gage', 'Nokia', 'Handheld', 'Original Edition', 'Metallic Gray',
 'Curved handheld design with phone keypad', 'Integrated controls + phone keypad', 'Discontinued',
 'Combined mobile phone and gaming console', 'Gray', 'N-Gage Branding',
 'Device, charger, headset', 2),

-- PlayStation 2 Color Variants
('PlayStation 2 Color Series', 'Sony', 'Console', 'Color Variants', 'Multiple',
 'Slim PS2 consoles in red, silver, white, blue, yellow', 'Matching DualShock 2 controllers', 'Limited Release',
 'Multiple color options for collectors', 'Red, Silver, White, Blue, Yellow', 'PlayStation 2 Branding',
 'Console, controller (per color)', 3),

-- Xbox Halo Limited Edition
('Xbox Original Halo Edition', 'Microsoft', 'Console', 'Halo Limited Edition', 'Translucent Green',
 'Original Xbox with translucent green casing', 'Halo-themed Xbox Controller', 'Collector\'s Item',
 'Halo branding and commemorative design', 'Green', 'Halo + Xbox Branding',
 'Console, controller, Halo game', 4);
