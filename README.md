**⭐️ Thank you Patrick Collins and Cyfrin Updraft! ⭐️**


# ERC721 (NFT) Project

## **Overview**

This project demonstrates two distinct NFT implementations using Solidity: BasicNft and MoodNft. It highlights the creation, minting, and management of ERC721 tokens, including dynamic metadata and on-chain storage capabilities.

### Key Objectives:

- **ERC721 Implementation:** Create fully compliant ERC721 tokens with advanced features.  
- **Dynamic Metadata:** Showcase on-chain metadata generation and stateful NFTs.  
- **Educational Resource:** Provide developers with a foundation for understanding NFTs, state management, and Solidity best practices.  



## **Features**

### **BasicNft:**  
- **Minting Custom NFTs:**  
  Users can mint NFTs by supplying a unique token URI.  

- **Token URI Management:**  
  Each token has a dedicated URI mapped to its token ID.  

- **Token Counter:**  
  Keeps track of the total number of minted NFTs.  

- **Error Handling:**  
  Prevents invalid queries for non-existent token URIs.  

---

### **MoodNft:**  
- **Stateful NFTs:**  
  Tokens can toggle between `HAPPY` and `SAD` states, adding dynamic behavior.  

- **Dynamic Metadata:**  
  Metadata and associated image URIs update based on the current state.  

- **Minting NFTs:**  
  Users can mint their Mood NFT with on-chain metadata generation.  

- **Mood Flip Mechanism:**  
  NFT owners can change their token's mood dynamically.  

- **On-Chain Metadata Storage:**  
  Utilizes Base64 encoding for storing metadata directly on-chain.



## **Project Structure**

- **Smart Contracts:**  
  - **`BasicNft.sol`:**  
    Implements a simple ERC721 token with token URI mapping and minting functionality.  

  - **`MoodNft.sol`:**  
    A dynamic ERC721 token contract that supports on-chain metadata and stateful behavior.  

- **Testing Suite:**  
  - Recommended tests for:  
    - Minting NFTs and managing states.  
    - Validating on-chain metadata generation.  
    - Handling edge cases, such as unauthorized mood flips or invalid token queries.  

- **Deployment Script:**  
  - Automates contract deployment for testing and production environments. 



## **About Me**

[![Anis Toumi Twitter](https://img.shields.io/badge/Twitter-1DA1F2?style=for-the-badge&logo=twitter&logoColor=white)](https://twitter.com/Anis_NFT)
[![Anis Toumi Linkedin](https://img.shields.io/badge/Linkedin-0e76a8?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/anis-toumi-1b158a83)

I’m passionate about blockchain technology, Solidity development, and decentralized systems. This project is a step forward in my journey to master blockchain development!