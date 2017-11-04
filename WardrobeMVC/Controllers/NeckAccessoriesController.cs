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
    public class NeckAccessoriesController : Controller
    {
        private WardrobeDBEntities db = new WardrobeDBEntities();

        // GET: NeckAccessories
        public ActionResult Index()
        {
            return View(db.NeckAccessories.ToList());
        }

        // GET: NeckAccessories/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NeckAccessory neckAccessory = db.NeckAccessories.Find(id);
            if (neckAccessory == null)
            {
                return HttpNotFound();
            }
            return View(neckAccessory);
        }

        // GET: NeckAccessories/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: NeckAccessories/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "NeckAccessoryID,Name,Photo,Type,Color,Season,Occasion")] NeckAccessory neckAccessory)
        {
            if (ModelState.IsValid)
            {
                db.NeckAccessories.Add(neckAccessory);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(neckAccessory);
        }

        // GET: NeckAccessories/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NeckAccessory neckAccessory = db.NeckAccessories.Find(id);
            if (neckAccessory == null)
            {
                return HttpNotFound();
            }
            return View(neckAccessory);
        }

        // POST: NeckAccessories/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "NeckAccessoryID,Name,Photo,Type,Color,Season,Occasion")] NeckAccessory neckAccessory)
        {
            if (ModelState.IsValid)
            {
                db.Entry(neckAccessory).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(neckAccessory);
        }

        // GET: NeckAccessories/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            NeckAccessory neckAccessory = db.NeckAccessories.Find(id);
            if (neckAccessory == null)
            {
                return HttpNotFound();
            }
            return View(neckAccessory);
        }

        // POST: NeckAccessories/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            NeckAccessory neckAccessory = db.NeckAccessories.Find(id);
            db.NeckAccessories.Remove(neckAccessory);
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
