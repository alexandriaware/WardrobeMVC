using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace WardrobeMVC.Models
{
    public class HeadAccessoriesController : Controller
    {
        private WardrobeDBEntities db = new WardrobeDBEntities();

        // GET: HeadAccessories
        public ActionResult Index()
        {
            return View(db.HeadAccessories.ToList());
        }

        // GET: HeadAccessories/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HeadAccessory headAccessory = db.HeadAccessories.Find(id);
            if (headAccessory == null)
            {
                return HttpNotFound();
            }
            return View(headAccessory);
        }

        // GET: HeadAccessories/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: HeadAccessories/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "HeadAccessoryID,Name,Photo,Type,Color,Season,Occasion")] HeadAccessory headAccessory)
        {
            if (ModelState.IsValid)
            {
                db.HeadAccessories.Add(headAccessory);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(headAccessory);
        }

        // GET: HeadAccessories/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HeadAccessory headAccessory = db.HeadAccessories.Find(id);
            if (headAccessory == null)
            {
                return HttpNotFound();
            }
            return View(headAccessory);
        }

        // POST: HeadAccessories/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "HeadAccessoryID,Name,Photo,Type,Color,Season,Occasion")] HeadAccessory headAccessory)
        {
            if (ModelState.IsValid)
            {
                db.Entry(headAccessory).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(headAccessory);
        }

        // GET: HeadAccessories/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HeadAccessory headAccessory = db.HeadAccessories.Find(id);
            if (headAccessory == null)
            {
                return HttpNotFound();
            }
            return View(headAccessory);
        }

        // POST: HeadAccessories/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HeadAccessory headAccessory = db.HeadAccessories.Find(id);
            db.HeadAccessories.Remove(headAccessory);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
