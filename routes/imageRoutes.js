import {filterImageFromURL, deleteLocalFiles} from '../util/util.js';
import express from "express";

export const router = express.Router();

router.get("/filteredImage", async (req, res) => {
    let { image_url } = req.query;
    if (!image_url) {
        res.status(400).send("Required query parameter image_url is missing");
        return;
    }

    filterImageFromURL(image_url)
        .then(filteredpath => {
            res.status(200).sendFile(filteredpath, () => {
                deleteLocalFiles([filteredpath])
            });
        })
        .catch(error => {
            res.status(422).send("Unable to process image: " + error.message);
        })
    }
);