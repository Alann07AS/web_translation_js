// translationFramework.js

// Fonction pour récupérer les traductions depuis le serveur
async function fetchTranslations(language) {
    try {
        const response = await fetch(`static/translations/${language}.json`);
        if (response.ok) {
            const translations = await response.json();
            return translations;
        } else {
            throw new Error('Failed to fetch translations');
        }
    } catch (error) {
        console.error(error);
        return {};
    }
}
    
    // Objet contenant les traductions
    let translations = {};
    
    // Fonction d'initialisation du framework de traduction
    async function initializeTranslationFramework(language = "en") {
        translations = await fetchTranslations(language);
        translatePage();
    }
    
    // Fonction pour traduire la page
    function translatePage() {
        const elementsToTranslate = document.querySelectorAll('[data-tl]');
        elementsToTranslate.forEach(element => {
            const translationKey = element.getAttribute('data-tl');
            element.textContent = translations[translationKey] || element.textContent;
        });
    }
    
    // Exporter les fonctions et objets nécessaires pour une utilisation externe
    export { initializeTranslationFramework };
    