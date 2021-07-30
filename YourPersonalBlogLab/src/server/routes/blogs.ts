import { Router } from "express";

const router = Router();

// GET /api/blogs/
router.get('/', (req, res) => {
    res.json({ msg: 'TEST BLOGS GET' });
});

export default router;
