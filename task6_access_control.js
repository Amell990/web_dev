// Example of Role-Based Access Control in a P2P marketplace
function authorizeRole(role) {
  return (req, res, next) => {
    if (req.user && req.user.role === role) {
      next();
    } else {
      res.status(403).json({ message: "Access denied: insufficient permissions" });
    }
  };
}

// Usage in routes
app.post("/listings/create", authorizeRole("seller"), (req, res) => {
  // Only sellers can create listings
  res.json({ message: "Listing created successfully" });
});

app.get("/admin/reports", authorizeRole("admin"), (req, res) => {
  // Only administrators can view reports
  res.json({ message: "Admin report data" });
});
