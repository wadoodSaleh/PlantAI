CREATE TABLE `plantcare` (
  `plant_name` varchar(50) DEFAULT NULL,
  `plant_condition` varchar(100) DEFAULT NULL,
  `treatment` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `plantcare`
--

INSERT INTO `plantcare` (`plant_name`, `plant_condition`, `treatment`) VALUES
('Potato', 'Healthy', 'Ensure well-drained, fertile soil with a pH between 5.0-6.5. Regularly test soil and add organic matter like compost. Use crop rotation and drip irrigation.'),
('Potato', 'Late blight', 'Plant resistant varieties, space rows for air circulation, and use fungicides with chlorothalonil or mancozeb. Remove infected debris after harvest.'),
('Potato', 'Early blight', 'Rotate crops, use certified seed potatoes, apply fungicides like azoxystrobin early in the season, and ensure balanced soil nitrogen.'),
('Strawberry', 'Healthy', 'Use well-drained, slightly acidic soil enriched with organic matter. Space plants properly, mulch, and water at the base. Fertilize appropriately.'),
('Strawberry', 'Leaf scorch', 'Avoid overhead irrigation, space plants adequately, remove infected leaves, and use fungicides like copper-based products or captan.'),
('Tomato', 'Healthy', 'Use nutrient-rich, well-drained soil with pH 6.2–6.8. Water deeply, mulch, prune lower leaves, and rotate crops.'),
('Tomato', 'Tomato mosaic virus', 'Disinfect tools, choose resistant varieties, control weeds, and avoid successive planting in the same location.'),
('Tomato', 'Tomato Yellow Leaf Curl Virus', 'Control whiteflies using reflective mulches or natural predators, remove infected plants, and select resistant varieties.'),
('Apple', 'Apple healthy', 'Proper Watering and Nutrition: Ensure trees receive adequate water, especially during dry periods. Fertilization with nitrogen, phosphorus, and potassium, along with micronutrients, is critical for overall tree health.\nPruning: Regularly prune trees to improve airflow and light penetration, which helps reduce fungal diseases and promotes fruit production.\nMulching: Apply mulch around the base of the tree to retain moisture, suppress weeds, and regulate soil temperature.'),
('Apple', 'Apple scab', 'Fungicide Application: Use fungicides that contain copper, sulfur, or specific systemic fungicides like myclobutanil or chlorothalonil. Apply fungicides early in the growing season and during wet periods to prevent spore germination.\nPruning and Disposal: Remove infected leaves and fruit to reduce inoculum levels in the environment.\nResistant Varieties: Plant resistant apple cultivars, such as \'Enterprise\' or \'Liberty\', that are less susceptible to the fungus.'),
('Apple', 'Black rot', 'Pruning: Remove and dispose of infected branches and fruit during the growing season to prevent the spread of the disease.\nFungicide Use: Fungicides containing thiophanate-methyl or captan can be used to control the fungus. Applications should be made before symptoms appear and at regular intervals throughout the growing season.\nSanitation: Ensure proper sanitation by disinfecting pruning tools to avoid transferring the fungus from one part of the tree to another.'),
('Apple', 'Cedar apple rust', 'Fungicide Application: Apply fungicides like chlorothalonil, myclobutanil, or sulfur at the green tip stage of apple growth and continue until the petal fall stage to prevent rust spore germination.\nRemove Cedar Hosts: If possible, remove nearby cedar trees or reduce their number in proximity to apple orchards to break the disease cycle.\nResistant Varieties: Plant apple varieties resistant to cedar apple rust, such as \'Jonafree\' or \'Enterprise\'.'),
('Corn', 'Corn (maize) healthy', 'Soil Preparation: Ensure proper drainage, fertility, and pH levels (around 6.0–6.5). Regularly test the soil to adjust nitrogen (N), phosphorus (P), and potassium (K) levels.\nCrop Rotation: Avoid continuous corn planting to reduce pest and disease pressure.\nPest and Weed Management: Use pre- and post-emergent herbicides and monitor for pest populations.\nFungicide Applications: Apply fungicides during critical growth stages (VT to R2) to control foliar diseases and maintain plant health'),
('Corn', 'Corn (maize) Northern Leaf Blight', 'Resistant Varieties: Plant hybrids with genetic resistance to NLB.\nTillage Practices: Use tillage to bury infected crop residue, as the pathogen survives in debris.\nFungicide Use: Apply fungicides with active ingredients such as strobilurins or triazoles during early disease development for effective control'),
('Corn', 'Corn (maize) Common rust', 'Resistant Hybrids: Select hybrids with resistance to Puccinia sorghi.\nFungicides: Apply fungicides like azoxystrobin or propiconazole if the disease pressure is high, especially during the tasseling stage.\nCrop Monitoring: Regularly scout fields for early signs of rust and apply fungicides as needed'),
('Corn', 'Corn (maize) Cercospora leaf spot Gray leaf spot', 'Residue Management: Remove or incorporate crop residue into the soil to reduce pathogen carryover.\nHybrid Selection: Use resistant hybrids to reduce disease susceptibility.\nFungicide Application: Apply fungicides targeting gray leaf spot, especially during the VT to R2 stages. Use products containing chlorothalonil or pyraclostrobin for effective control');
('Grape', 'Grape healthy', 'Sanitation and Pruning: Regularly prune vines to ensure proper air circulation and sunlight penetration, reducing disease pressure. Remove debris and infected plant parts to prevent overwintering pathogens.\nPreventive Fungicides: Apply sulfur or copper-based fungicides early in the growing season as a preventive measure against fungal diseases.\nNutrition Management: Provide balanced fertilizers rich in potassium and phosphorus to boost vine vigor and resistance to diseases'),
('Grape', 'Grape Leaf blight (Isariopsis Leaf Spot)', 'Cultural Practices: Improve airflow by canopy management and timely pruning to reduce humidity around the foliage.\nOrganic Treatments: Studies suggest applying lemongrass essential oil (at 2-4 mL/L) to reduce the severity of Isariopsis leaf spot. The oil helps stimulate plant defense enzymes and reduce fungal spread. ResearchGate.\nChemical Control: Use fungicides like mancozeb or Bordeaux mixture during early signs of infection'),
('Grape', 'Grape Esca (Black Measles)', 'Cultural Control: Remove and destroy infected wood and vines. Apply wound sealants after pruning to prevent fungal spores from entering cuts.\nChemical Treatments: Research supports the use of fungicides with flutriafol or tebuconazole during early spring to protect vines from Esca-associated fungi'),
('Grape', 'Grape Black rot', 'Monitoring and Timely Spraying: Black rot thrives in warm, wet conditions. Apply fungicides such as myclobutanil or captan just after fruit set, two weeks later, and before clusters close.\nCultural Practices: Remove mummified berries and infected plant debris. Avoid overhead irrigation and maintain proper spacing between vines to reduce moisture');
COMMIT;