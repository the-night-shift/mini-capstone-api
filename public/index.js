/* global Vue, VueRouter, axios */

var ProductEditPage = {
  template: "#product-edit-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      product: {name: "", description: "", price: ""}
    };
  },
  created: function() {
    axios.get("/products/" + this.$route.params.id).then(function(response) {
      this.product = response.data;
    }.bind(this));
  },
  methods: {
    updateProduct: function() {
      console.log('updating the product...');
      // take in the parameters, make an object out of them
      var params = {
        name: this.product.name,
        description: this.product.description,
        price: this.product.price
      };
      // make an axios request
      axios.patch("/products/" + this.$route.params.id, params).then(function(response) {
        router.push("/");
      });
    }
  },
  computed: {}
};


var ProductNewPage = {
  template: "#product-new-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      product: {
        name: "toy",
        description: "it is us"
      }
    };
  },
  created: function() {
    axios.get("/products/" + this.$route.params.id).then(function(response) {
      this.product = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var ProductShowPage = {
  template: "#product-show-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      product: {
        name: "toy",
        description: "it is us"
      }
    };
  },
  created: function() {
    axios.get("/products/" + this.$route.params.id).then(function(response) {
      this.product = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};


var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Welcome to Vue.js!",
      products: []
    };
  },
  created: function() {
    axios.get("/products").then(function(response) {
      this.products = response.data;
    }.bind(this));
  },
  methods: {},
  computed: {}
};

var router = new VueRouter({
  routes: [
    { path: "/", component: HomePage },
    { path: "/products/:id/edit", component: ProductEditPage },
    { path: "/products/new", component: ProductNewPage },
    { path: "/products/:id", component: ProductShowPage }

  ],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});

