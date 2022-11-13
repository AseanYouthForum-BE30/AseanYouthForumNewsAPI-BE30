'use strict';

/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up (queryInterface, Sequelize) {
    /**
     * Add seed commands here.
     *
     * Example:
     * await queryInterface.bulkInsert('People', [{
     *   name: 'John Doe',
     *   isBetaMember: false
     * }], {});
    */

    await queryInterface.bulkInsert('Countries', [
      {
        name: "Brunei Darussalam",
        createdAt: new Date()
      },
      {
        name: "Cambodia",
        createdAt: new Date()
      },
      {
        name: "Indonesia",
        createdAt: new Date()
      },
      {
        name: "Laos",
        createdAt: new Date()
      },
      {
        name: "Malaysia",
        createdAt: new Date()
      },
      {
        name: "Myanmar",
        createdAt: new Date()
      },
      {
        name: "Philippines",
        createdAt: new Date()
      },
      {
        name: "Singapore",
        createdAt: new Date()
      },
      {
        name: "Thailand",
        createdAt: new Date()
      },
      {
        name: "Vietnam",
        createdAt: new Date()
      }
    ])
  },

  async down (queryInterface, Sequelize) {
    /**
     * Add commands to revert seed here.
     *
     * Example:
     * await queryInterface.bulkDelete('People', null, {});
     */

     return queryInterface.bulkDelete('Countries', null, {});
  }
};
