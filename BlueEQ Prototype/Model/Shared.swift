//
//  Shared.swift
//  BlueEQ Prototype
//
//  Created by Alexander Gillie on 2/8/19.
//  Copyright © 2019 Alexander Gillie. All rights reserved.
//

import Foundation

class Shared {
    
    static let shared = Shared()
    
    var tipsAndTechniques: [String: [String]] = [:]
    var selectedDimensions = [String]()
    var allDimensions: [String: [String]] = [:]
    var parentDimensions = [String]()
    var assessmentScores = [String: Int]()
    var resources = [String: [Resource]]()
    var currentUser = User()
    
    init() {
        initTipsAndTechniques()
        initSelectedDimensions()
        initAllDimensions()
        initParentDimensions()
        initScores()
        initResources()
        var userFetch = UserFetch()
    }
    
    private func initSelectedDimensions() {
        selectedDimensions = [
            "Self-Regard",
            "Optimism",
            "Self-Respect"
        ]
    }
    
    private func initParentDimensions() {
        parentDimensions = [
            "Self-Regard",
            "Self-Awareness",
            "Self-Control",
            "Social Perception",
            "Social Effectiveness"
        ]
    }
    
    private func initAllDimensions() {
        allDimensions["Self-Regard"] = [
            "Self-Regard",
            "Optimism",
            "Self-Respect",
            "Self-Confidence",
            "Motivation",
            "Independence",
        ]
        allDimensions["Self-Awareness"] = [
            "Self-Awareness",
            "Openness",
            "Self-Knowledge",
            "Integrity",
            "Monitoring",
            "Introspection",
        ]
        allDimensions["Self-Control"] = [
            "Self-Control",
            "Impulse Control",
            "Stress Tolerance",
            "Emotional Stability",
            "Resilience",
            "Delayed Gratification",
        ]
        allDimensions["Social Perception"] = [
            "Social Perception",
            "Empathy",
            "Observation",
            "Anticipation",
            "Interpretation",
            "Mindfulness",
        ]
        allDimensions["Social Effectiveness"] = [
            "Social Effectiveness",
            "Influence",
            "Conflict Management",
            "Relationship Management",
            "Accountability",
            "Ego Management",
        ]
    }
    
    //TODO: Fill in the rest
    private func initTipsAndTechniques() {
        tipsAndTechniques["Self-Regard"] = [
            "Set and strive to achieve stretch goals.",
            "Explore and identify your personal strengths.",
            "Take an honest inventory of your personal weaknesses and strive to overcome them.",
            "Reject harsh and inaccurate criticism.",
            "Avoid flattery, fame, wealth, or power as measures of personal value.",
            "Find the humor in your personal imperfections.",
            "Admit mistakes and apologize to those you have offended.",
            "Show patience and kindness to others.",
            "Avoid abusive, dominating behavior.",
            "Stand up for yourself if you have been mistreated.",
            "Invest in your relationships with others.",
            "Express gratitude and avoid complaining.",
            "Teach, coach, or mentor others.",
            "Serve someone in need.",
            "Learn a new skill.",
            "Contribute to a cause that is greater than self."
        ]
        tipsAndTechniques["Optimism"] = [
            "Look for the positive aspects of any setback.",
            "Recognize that most problems are temporary.",
            "Journal how you overcome adversity.",
            "Laugh and see the humor in problems.",
            "Visualize the future and what is possible.",
            "Anticipate challenges and smile when they come.",
            "Seek feedback from others to find solutions.",
            "Act early. Procrastination creates more pessimism.",
            "Reflect on the inherent goodness of people.",
            "Serve others. Optimism is a natural consequence of service.",
            "Solve a small problem to give you momentum to tackle bigger issues.",
            "Stretch yourself. Putting forth raw effort increases a positive outlook.",
            "Focus on what you can influence and control. Don’t waste energy worrying about things you cannot change.",
            "Improve yourself. Personal progress creates hope.",
            "Give others specific and genuine compliments to create optimism as a by-product.",
        ]
        tipsAndTechniques["Self-Respect"] = [
            "Identify your talents, strengths, and abilities.",
            "Contribute to the growth or development of another person.",
            "Keep company with people who will validate you for who you are.",
            "Avoid destructive relationships.",
            "Recognize change and improvement in yourself.",
            "Reflect on your inherent worth and equality with all people.",
            "Clean and organize your physical surroundings.",
            "Stand up for yourself if you are mistreated.",
            "List the things that make you unique and different.",
            "Hold yourself accountable by correcting yourself when you make a mistake.",
            "Set standards of personal conduct.",
            "Identify your personal values.",
            "Define who you are apart from your profession.",
            "Break a bad habit.",
            "Treat others with increased respect.",
        ]
        tipsAndTechniques["Self-Confidence"] = [
            "Consider failure a learning opportunity. Identify what you learned from your last failure.",
            "List your personal strengths and assets.",
            "Prioritize competing demands. Identify what you will say no to.",
            "Increase your networking. Reach out to a new person.",
            "Set a goal to learn something new and do it.",
            "Increase your exercise and improve your physical appearance.",
            "Improve your reading habits.",
            "Be consistent in your behavior and treatment of people regardless of the setting.",
            "In your time management, do the hardest things first.",
            "Prepare yourself to be wrong and graciously admit when you are.",
            "Take a chance on doing something that is risky and yet worthwhile.",
            "Tell the truth about yourself without exaggeration."
        ]
    }
    
    // TODO: Replace with info from assessment
    
    private func initScores() {
        assessmentScores["Self-Regard"] = 44
        assessmentScores["Optimism"] = 45
        assessmentScores["Self-Respect"] = 46
        assessmentScores["Self-Confidence"] = 47
        assessmentScores["Motivation"] = 48
        assessmentScores["Independence"] = 50
        
        assessmentScores["Self-Awareness"] = 58
        assessmentScores["Openness"] = 59
        assessmentScores["Self-Knowledge"] = 60
        assessmentScores["Integrity"] = 61
        assessmentScores["Monitoring"] = 63
        assessmentScores["Introspection"] = 64

        assessmentScores["Self-Control"] = 79
        assessmentScores["Impulse Control"] = 80
        assessmentScores["Stress Tolerance"] = 81
        assessmentScores["Emotional Stability"] = 81
        assessmentScores["Resilience"] = 82
        assessmentScores["Delayed Gratification"] = 83
        
        assessmentScores["Social Perception"] = 69
        assessmentScores["Empathy"] = 70
        assessmentScores["Observation"] = 71
        assessmentScores["Anticipation"] = 72
        assessmentScores["Interpretation"] = 73
        assessmentScores["Mindfulness"] = 74
        
        assessmentScores["Social Effectiveness"] = 87
        assessmentScores["Influence"] = 88
        assessmentScores["Conflict Management"] = 89
        assessmentScores["Relationship Management"] = 90
        assessmentScores["Accountability"] = 91
        assessmentScores["Ego Management"] = 92
    }
 
    // MARK: Resource Data
    
    func initResources() {
        resources["Self-Regard"] = [
            Resource(resourceDate: Date(), content: "Treat yoself", dimension: "Self-Regard"),
            Resource(resourceDate: Date(), content: "Eat slugs malfoy", dimension: "Self-Regard"),
        ]
        
        resources["Optimism"] = [
            Resource(resourceDate: Date(), content: "I'm sure you'll get married", dimension: "Optimism"),
            Resource(resourceDate: Date(), content: "Get a degree and you'll get a job", dimension: "Self-Regard"),
        ]
        
        resources["Self-Respect"] = [
            Resource(resourceDate: Date(), content: "You're beautiful.", dimension: "Self-Respect"),
            Resource(resourceDate: Date(), content: "Your muscles are nice.", dimension: "Self-Respect")
        ]
    }
    
    // MARK: User Data
    
    func initUser(user: User) {
        currentUser = user
    }
    
    
    // MARK: Getters
    
    func getTips(withLabel: String) -> [String] {
        return tipsAndTechniques[withLabel]!
    }
    
    func getSelectedDimensions() -> [String] {
        return selectedDimensions
    }
    
    func getParentDimensions() -> [String] {
        return Array(allDimensions.keys)
    }
    
    func getChildDimensions(ofParent: String) -> [String] {
        return allDimensions[ofParent]!
    }
    
    func getScore(ofDimension: String) -> Int {
        return assessmentScores[ofDimension]!
    }
    
    func getSelectedResources() -> [String : [Resource]] {
        var resourcesToReturn = [String: [Resource]]()
        for dimension in selectedDimensions {
            resourcesToReturn[dimension] = resources[dimension]
        }
        
        return resourcesToReturn
    }
    
    func getCurrentUser() -> User {
        return currentUser
    }
}
