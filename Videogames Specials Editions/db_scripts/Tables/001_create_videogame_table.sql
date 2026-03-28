-- Create the Collection Set table first
CREATE TABLE CollectionSet (
    id INT AUTO_INCREMENT PRIMARY KEY,
    collectionSetName VARCHAR(150) NOT NULL,   
    releaseDate DATE
);

-- Create the Videogame Special Editions table
CREATE TABLE VideogameSpecialEdition (
    id INT AUTO_INCREMENT PRIMARY KEY,
    productName VARCHAR(150) NOT NULL,         
    manufacturer VARCHAR(100),                 
    category VARCHAR(50),                      
    edition VARCHAR(80),                       
    baseColor VARCHAR(40),                     
    physicalAttributes TEXT,                   
    controllers VARCHAR(100),                  
    salesTagStatus VARCHAR(50),                
    specialFeatures TEXT,                      
    colorVariations VARCHAR(100),              
    designBranding VARCHAR(120),               
    includedItems TEXT,                        
    collectionSetId INT,
    FOREIGN KEY (collectionSetId) REFERENCES CollectionSet(id)
);
