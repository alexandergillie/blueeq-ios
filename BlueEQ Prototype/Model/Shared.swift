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
    var allDimensions = [String]()
    
    init() {
        initTipsAndTechniques()
        initSelectedDimensions()
        initAllDimensions()
    }
    
    private func initSelectedDimensions() {
        selectedDimensions = [
            "Self-Regard",
            "Optimism",
            "Self-Respect"
        ]
    }
    
    
    private func initAllDimensions() {
        allDimensions = [
            "Self-Regard",
            "Optimism",
            "Self-Respect",
            "Motivation",
            "Independence",
            "Self-Awareness",
            "Openness",
            "Self-Knowledge",
            "Integrity",
            "Monitoring",
            "Introspection",
            "Self-Control",
            "Impulse Control",
            "Stress Tolerance",
            "Emotional Stability",
            "Resilience",
            "Delayed Gratification",
            "Social Percpetion",
            "Empathy",
            "Observation",
            "Anticipation",
            "Interpretation",
            "Mindfulness",
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
}
